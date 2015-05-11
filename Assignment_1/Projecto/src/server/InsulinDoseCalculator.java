package server;

import javax.jws.WebMethod;
import javax.jws.WebService;
import javax.xml.ws.Endpoint;
import java.math.BigDecimal;
import java.math.MathContext;

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
		BigDecimal carbohydrate_dose, high_blood_sugar_dose, carboAmount, carboRation, preSugar, targetSugar, personalSen, result;

		if (carbohydrateAmount < 60 || carbohydrateAmount > 150 || carbohydrateToInsulinRatio < 10
				|| carbohydrateToInsulinRatio > 15 || preMealBloodSugar < 120 || preMealBloodSugar > 250
				||targetBloodSugar < 80 || targetBloodSugar > 120  || personalSensitivity < 15
				|| personalSensitivity > 100)
			return 0;
		else if (targetBloodSugar > preMealBloodSugar)
			return 0;
		else {
			carboAmount = new BigDecimal(50*carbohydrateAmount);
			carboRation = new BigDecimal(carbohydrateToInsulinRatio);
			preSugar = new BigDecimal(preMealBloodSugar);
			targetSugar = new BigDecimal(targetBloodSugar);
			personalSen = new BigDecimal(personalSensitivity);

			carbohydrate_dose = carboAmount.divide(carboRation, MathContext.DECIMAL128);
			high_blood_sugar_dose = preSugar.subtract(targetSugar);

			result = carbohydrate_dose.add(high_blood_sugar_dose).divide(personalSen, MathContext.DECIMAL128);

			return (int) Math.round(result.doubleValue());
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
		BigDecimal body, temp, result;

		if (bodyWeight < 60 || bodyWeight > 120)
			return 0;

		body = new BigDecimal(bodyWeight);
		temp = new BigDecimal(0.5*0.55);
		result = body.multiply(temp);

		return (int) Math.round(result.doubleValue());
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
		int i;
		BigDecimal sx, sy, sxx, sxy, n, alpha, beta, phActLevel, result;

		sx = BigDecimal.ZERO;
		sy = BigDecimal.ZERO;
		sxx = BigDecimal.ZERO;
		sxy = BigDecimal.ZERO;
		phActLevel = new BigDecimal(physicalActivityLevel);
		n = new BigDecimal(physicalActivitySamples.length);

		if (physicalActivityLevel < 0 || physicalActivityLevel > 10 || physicalActivitySamples.length != bloodSugarDropSamples.length
				|| physicalActivitySamples.length == 0 || physicalActivitySamples.length > 10)
			return 0;

		for(i=0; i<physicalActivitySamples.length; i++) {
			if(physicalActivitySamples[i] < 0 || physicalActivitySamples[i] > 10 || bloodSugarDropSamples[i] < 15 || bloodSugarDropSamples[i] > 100)
				return 0;

			sx = sx.add(new BigDecimal(physicalActivitySamples[i]));
			sy = sy.add(new BigDecimal(bloodSugarDropSamples[i]));
			sxx = sxx.add(new BigDecimal(physicalActivitySamples[i]*physicalActivitySamples[i]));
			sxy = sxy.add(new BigDecimal(physicalActivitySamples[i]*bloodSugarDropSamples[i]));
			//syy = syy.add(new BigDecimal(bloodSugarDropSamples[i]*bloodSugarDropSamples[i]));
		}

		beta = (n.multiply(sxy).subtract(sx.multiply(sy))).divide(n.multiply(sxx).subtract(sx.multiply(sx)), MathContext.DECIMAL128);
		alpha = (sy.subtract(beta.multiply(sx))).divide(n, MathContext.DECIMAL128);
		result = alpha.add(beta.multiply(phActLevel));

		return (int) Math.round(result.doubleValue());
	}



	public static void main(String[] args) {
		InsulinDoseCalculator insulin = new InsulinDoseCalculator();
		Endpoint endpoint = Endpoint.publish("http://localhost:8080/insulin", insulin);
	}
}




