package myssm.demo.service;

import java.util.Calendar;

public class Tools {



    public static String gettime()
    {
        Calendar cal=Calendar.getInstance();
        int y=cal.get(Calendar.YEAR);
        int m=cal.get(Calendar.MONTH);
        int d=cal.get(Calendar.DATE);
        int h=cal.get(Calendar.HOUR_OF_DAY);
        int mi=cal.get(Calendar.MINUTE);
        int s=cal.get(Calendar.SECOND);
        if(m<12){
            m=m+1;
        }else{
            m=1;
        }

        String ymd = y+"年"+m+"月"+d+"日"+h+"时"+mi+"分"+s+"秒";
        return ymd;
    }
}
