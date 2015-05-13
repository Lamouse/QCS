package diabetes;

import com.sun.xml.internal.ws.client.BindingProviderProperties;

import javax.xml.ws.BindingProvider;
import java.net.URL;
import java.util.Map;

/**
 * Created by jpedrom on 11/05/15.
 */
public class PersonalSensitivityToInsulin {

    private int input2_1;       /*Total grams of carbohydrates in the meal*/
    private int input2_2;       /*Total grams of carbohydrates processed by 1 unit of rapid acting insulin*/
    private int input2_3;       /*Actual blood sugar level measured before the meal*/
    private int input2_4;       /*Target blood sugar before the meal*/
    private int input2_5;       /*Today’s physical activity level*/
    private int[] physical;
    private int[] drops;
    private int l1_3;

    private int next = 0;
    private String links[] = new String[] {"http://qcs12.dei.uc.pt:8080/insulin?wsdl", "http://liis-lab.dei.uc.pt:8080/Server?wsdl", "http://qcs01.dei.uc.pt:8080/InsulinDoseCalculator?wsdl"};
    private int number_Ws = 3;
    private int n = 3;
    private int results[] = new int[n];
    private Webservice ws_threads[] = new Webservice[n];

    public int getL1_3() {
        return l1_3;
    }

    public void setL1_3(int l1_3) {
        System.out.println(l1_3);
        this.l1_3 = l1_3;
    }

    public int getInput2_1() {
        return input2_1;
    }

    public void setInput2_1(int input2_1) {
        this.input2_1 = input2_1;
    }

    public int getInput2_2() {
        return input2_2;
    }

    public void setInput2_2(int input2_2) {
        this.input2_2 = input2_2;
    }

    public int getInput2_3() {
        return input2_3;
    }

    public void setInput2_3(int input2_3) {
        this.input2_3 = input2_3;
    }

    public int getInput2_4() {
        return input2_4;
    }

    public void setInput2_4(int input2_4) {
        this.input2_4 = input2_4;
    }

    public int getInput2_5() {
        return input2_5;
    }

    public void setInput2_5(int input2_5) {
        this.input2_5 = input2_5;
    }

    public int[] getPhysical() {
        return physical;
    }

    public void setPhysical(int[] physical) {
        this.physical = physical;
    }

    public int[] getDrops() {
        return drops;
    }

    public void setDrops(int[] drops) {
        this.drops = drops;
    }

    public int getResult() {
        int result = 0, i, temp;

        /*for(i = 0; i < 3; i++) {
            execution();

            temp = Voter.voter(this.results, this.n);

            if (temp != -990) {
                result = temp;
                break;
            }
        }*/
        /*System.out.println(getInput2_1()+" "+getInput2_2()+" "+getInput2_3()+" "+getInput2_4()+" "+getInput2_5());


        for(i=0; i<this.drops.length; i++){
            System.out.println(this.drops[i]);
        }*/

        return result;
    }

    private void execution() {
        int i;

        for(i = 0; i < n; i++) {
            ws_threads[i] = new Webservice(this.links[next]);
            next = (next + 1) % number_Ws;
            ws_threads[i].start();
        }

        for(i=0; i < n; i++) {
            try {
                ws_threads[i].join();

            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            this.results[i] = this.ws_threads[i].getResult();
        }
    }

    public class Webservice extends Thread{
        private int result;
        private String wb;

        public Webservice(String wb){
            this.wb = wb;
            this.result = -999;
        }

        public int getResult(){
            return this.result;
        }

        public void run(){
            try {
                //if (wb == 0) {
                diabetes.qcs12.InsulinDoseCalculatorService service = new diabetes.qcs12.InsulinDoseCalculatorService(new URL(this.wb));
                diabetes.qcs12.InsulinDoseCalculator proxy = service.getInsulinDoseCalculatorPort();

                //((BindingProvider) proxy).getRequestContext().put("javax.xml.ws.client.connectionTimeout", "100");
                Map<String, Object> temp = ((BindingProvider) proxy).getRequestContext();
                temp.put(BindingProviderProperties.REQUEST_TIMEOUT, 1000);
                temp.put(BindingProviderProperties.CONNECT_TIMEOUT, 1000);
                result = proxy.backgroundInsulinDose(getInput2_1());
                /*} else if (wb == 1) {
                    diabetes.liis_lab.InsulinDoseCalculatorService service = new diabetes.liis_lab.InsulinDoseCalculatorService();
                    diabetes.liis_lab.InsulinDoseCalculator proxy = service.getInsulinDoseCalculatorPort();
                    Map<String, Object> temp = ((BindingProvider) proxy).getRequestContext();
                    temp.put(BindingProviderProperties.REQUEST_TIMEOUT, 1000);
                    temp.put(BindingProviderProperties.CONNECT_TIMEOUT, 1000);
                    result = proxy.backgroundInsulinDose(getInput3_1());
                } else if (wb == 2) {
                    diabetes.qcs01.InsulinDoseCalculatorImpService service = new diabetes.qcs01.InsulinDoseCalculatorImpService();
                    diabetes.qcs01.InsulinDoseCalculator proxy = service.getInsulinDoseCalculatorImpPort();
                    Map<String, Object> temp = ((BindingProvider) proxy).getRequestContext();
                    temp.put(BindingProviderProperties.REQUEST_TIMEOUT, 1000);
                    temp.put(BindingProviderProperties.CONNECT_TIMEOUT, 1000);
                    result = proxy.backgroundInsulinDose(getInput3_1());
                }*/
            }
            catch (Exception e){
                System.out.println(e);
            }
            //System.out.println(wb + " : " + result);
        }
    }
}
