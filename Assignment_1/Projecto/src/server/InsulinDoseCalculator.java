package server;

import javax.jws.WebMethod;
import javax.jws.WebService;
import javax.xml.ws.Endpoint;

@WebService
public class InsulinDoseCalculator {

	/**
	 * Calculates the number of insulin units needed after one meal.
	 * <p>
	 * This method takes the amount of carbohydrate in a given meal, and returns
	 * the number of units of insulin needed after that meal. The returned
	 * number of units of insulin equals the carbohydrate dose plus the high
	 * blood sugar dose, which are computed as follows.
	 * <p>
	 * The carbohydrate dose equals the total grams of carbohydrates in the meal
	 * divided by the amount of carbohydrate disposed by one unit of insulin,
	 * corrected by taking into account the personal sensitivity to insulin.
	 * This dose equals <code>carbohydrateAmount / carbohydrateToInsulinRatio /
	 * personalSensitivity x 50</code>.
	 * <p>
	 * The high blood sugar dose equals the difference between the pre-meal
	 * blood sugar level and the target blood sugar level, divided by the
	 * personal sensitivity to insulin. This equals <code>(preMealBloodSugar -
	 * targetBloodSugar) / personalSensitivity</code>. The personal sensitivity
	 * may be estimated using <code>personalSensitivityToInsulin()</code>.
	 * <p>
	 * In the special case when the target blood sugar level is greater than the
	 * pre-meal blood sugar level, the return value of this method is zero (no
	 * insulin).
	 *
	 * @param carbohydrateAmount amount of carbohydrate in the meal, in grams
	 * @param carbohydrateToInsulinRatio carbohydrate grams disposed by one unit
	 * @param preMealBloodSugar pre-meal measured blood sugar level, in mg/dl
	 * @param targetBloodSugar prescribed target blood sugar level, in mg/dl
	 * @param personalSensitivity personal sensitivity to insulin
	 * @return the mealtime units of insulin needed, or -1 in case of error
	 */
	@WebMethod
	public int mealtimeInsulinDose(int carbohydrateAmount, int carbohydrateToInsulinRatio, int preMealBloodSugar, int targetBloodSugar, int personalSensitivity) {
		double carbohydrate_dose, high_blood_sugar_dose;

		if (carbohydrateAmount < 0 || carbohydrateToInsulinRatio < 0 || preMealBloodSugar < 0 || targetBloodSugar < 0 || personalSensitivity < 0)
			return -1;
		else if (targetBloodSugar > preMealBloodSugar)
			return 0;
		else {
			carbohydrate_dose = carbohydrateAmount / carbohydrateToInsulinRatio / personalSensitivity * 50;
			high_blood_sugar_dose = (preMealBloodSugar - targetBloodSugar) / personalSensitivity;

			return (int) Math.round(carbohydrate_dose + high_blood_sugar_dose);
		}
	}

	/**
	 * Calculates the total number of units of insulin needed between meals.
	 * <p>
	 * The total insulin units required in one day equals <code>0.55 x body
	 * weight</code> in kilograms. This method returns 50% of that number, since
	 * the background need for insulin, between meals, is around half of the
	 * daily total.
	 *
	 * @param bodyWeight the person's weight in kilograms
	 * @return the background units of insulin needed, or -1 in case of error
	 */
	@WebMethod
	public int backgroundInsulinDose(int bodyWeight){
		if (bodyWeight < 0)
			return -1;
		return (int) Math.round(0.55 * bodyWeight);
	}
	
	/**
	 * Determines an individual's sensitivity to one unit of insulin.
	 * <p>
	 * One unit of insulin typically drops blood sugar by 50 mg/dl, but this
	 * value depends on each individual's sensitivity and daily physical
	 * activity. This method predicts the blood sugar drop (in mg/dl) that will
	 * result from one unit of insulin, for a given physical activity level.
	 * <p>
	 * To predict the blood sugar drop, this method accepts two arrays with
	 * K samples of (physical activity level, blood sugar drop). The two arrays
	 * must therefore have the same length. First, a simple linear regression
	 * (least squares method) is performed to compute alpha and beta. Then, the
	 * return value is <code>alpha + beta x physicalActivityLevel</code>.
	 * <p>
	 * The physical activity levels, including the ones in the array of samples,
	 * and the blood sugar drop values are non-negative integers. The return
	 * value of this method may be passed to <code>mealtimeInsulinDose()</code>
	 * as a parameter.
	 * 
	 * @param physicalActivityLevel most recent activity level (the predictor)
	 * @param physicalActivitySamples K samples of past physical activity
	 * @param bloodSugarDropSamples corresponding K samples of blood sugar drop
	 * @return the blood sugar drop in mg/dl, or -1 in case of error
	 */
	@WebMethod
	public int personalSensitivityToInsulin(int physicalActivityLevel, int[] physicalActivitySamples, int[] bloodSugarDropSamples){
		int i, sx=0, sy=0, sxx=0, sxy=0, syy=0, n;
		double alpha, beta;

		if (physicalActivityLevel < 0 || physicalActivityLevel > 10 || physicalActivitySamples.length != bloodSugarDropSamples.length || physicalActivitySamples.length == 0)
			return -1;

		n = physicalActivitySamples.length;
		for(i=0; i<n; i++) {
			if(physicalActivitySamples[i] < 0 || physicalActivitySamples[i] > 10 || bloodSugarDropSamples[i] < 0)
				return -1;

			sx += physicalActivitySamples[i];
			sy += bloodSugarDropSamples[i];
			sxx += physicalActivitySamples[i]*physicalActivitySamples[i];
			syy += bloodSugarDropSamples[i]*bloodSugarDropSamples[i];
			sxy += physicalActivitySamples[i]*bloodSugarDropSamples[i];
		}

		beta = (n*sxy - sx*sy) / (n*sxx - sx*sx);
		alpha = sy/n - beta*sx/n;

		return (int) Math.round(alpha + beta * physicalActivityLevel);
	}



	public static void main(String[] args) {
		InsulinDoseCalculator insulin = new InsulinDoseCalculator();
		Endpoint endpoint = Endpoint.publish("http://localhost:8081/insulin", insulin);
	}
}




