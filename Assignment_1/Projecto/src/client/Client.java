package client;

import java.util.*;

class Client {
	public static void main(String[] args) {
		InsulinDoseCalculatorService service = new InsulinDoseCalculatorService();
		InsulinDoseCalculator proxy = service.getInsulinDoseCalculatorPort();
		//int mealtimeInsulinDose = proxy.mealtimeInsulinDose(0, 0, 0, 0, 0);
		//System.out.println("Meal time Insulin Dose: " + mealtimeInsulinDose);

		//backgroundInsulinDose
		int insuleDose = proxy.backgroundInsulinDose(79);
		System.out.println("backgroundInsulinDose: " + insuleDose);

		//mealtimeInsulinDose
		insuleDose = proxy.mealtimeInsulinDose(60, 12, 200, 100, 25);
		System.out.println("mealtimeInsulinDose: " + insuleDose);
		insuleDose = proxy.mealtimeInsulinDose(95, 10, 100, 120, 50);
		System.out.println("mealtimeInsulinDose: " + insuleDose);
		insuleDose = proxy.mealtimeInsulinDose(120, 14, 170, 100, 60);
		System.out.println("mealtimeInsulinDose: " + insuleDose);

		//personalSensitivityToInsulin
		int[] myIntArray = {0, 10};
		int[] myIntArray1 = {50, 50};
		int mealtimeInsulinDose = proxy.personalSensitivityToInsulin(5, arrayToList(myIntArray), arrayToList(myIntArray1));
		System.out.println("Meal time Insulin Dose: " + mealtimeInsulinDose);

		int[] myIntArray2 = {2, 8};
		int[] myIntArray3 = {32, 83};
		mealtimeInsulinDose = proxy.personalSensitivityToInsulin(6, arrayToList(myIntArray2), arrayToList(myIntArray3));
		System.out.println("Meal time Insulin Dose: " + mealtimeInsulinDose);

		int[] myIntArray4 =  {1, 3, 10};
		int[] myIntArray5 =  {33, 43, 70};
		mealtimeInsulinDose = proxy.personalSensitivityToInsulin(0, arrayToList(myIntArray4), arrayToList(myIntArray5));
		System.out.println("Meal time Insulin Dose: " + mealtimeInsulinDose);

		int[] myIntArray6 =  {1, 6, 8, 9};
		int[] myIntArray7 =  {32, 61, 91, 88};
		mealtimeInsulinDose = proxy.personalSensitivityToInsulin(4, arrayToList(myIntArray6), arrayToList(myIntArray7));
		System.out.println("Meal time Insulin Dose: " + mealtimeInsulinDose);
	}
	
	/**
	 * Instead of passing an int[] to a web service, pass a List<Integer>.
	 * <p>
	 * This method converts an array of int to a List of Integer. When a web
	 * service publishes a method that receives an int[] as parameter, the type
	 * gets converted to a "sequence" in XML, and the client should therefore
	 * submit, as parameter, a List<Integer> instead of an int[]. The web
	 * service will still receive an int[] on the server side.
	 *
	 * @param array the array of int, to be converted to List<Integer>
	 * @return a list containing the same numbers as the array
	 */
	static List<Integer> arrayToList(int[] array) {
		List<Integer> list = new ArrayList<Integer>();
		for(int i : array)
			list.add(i);
		return list;
	}

	static List<Double> arrayToList(double[] array) {
		List<Double> list = new ArrayList<Double>();
		for (double i : array)
			list.add(i);
		return list;
	}
}
