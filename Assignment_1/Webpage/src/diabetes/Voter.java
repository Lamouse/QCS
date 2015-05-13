package diabetes;

/**
 * Created by paulo on 13-05-2015.
 */
public class Voter {

    public static int voter(int[] results, int n) {
        int[] value = new int[results.length];
        int[] freq = new int[results.length];
        int result=99999, index=0, count=0,i,j;

        for(i=0; i<n; i++) {
            count = 0;
            for(j=0; j<index; j++) {
                if (results[i] == value[j])
                    count = 1;
            }
            if(count==0) {
                for(j=0; j<n; j++) {
                    if(results[i]==results[j] || results[i]==results[j]-1 || results[i]==results[j]+1)
                        count++;
                }
                value[index] = results[i];
                freq[index] = count;
                index++;
            }
        }


        for(i=0;i<n;i++) {
            System.out.println(results[i]);
        }
        for(i=0;i<index;i++) {
            System.out.println(value[i]+"->"+freq[i]);
        }

        if(n%2 == 0)
            count = (int) Math.floor(n/2);
        else
            count = (int) Math.floor(n/2) + 1;

        for(i=0; i<index; i++) {
            if(freq[i] >= count && value[i] < result){
                result = value[i];
                count = freq[i];
            }
        }

        if(result==99999)
            result = -999;
        return result;
    }
}
