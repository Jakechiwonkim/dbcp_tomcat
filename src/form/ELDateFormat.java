package form;

import java.text.SimpleDateFormat;
import java.util.Date;

public class ELDateFormat {
    private static SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd(E) HH:mm:ss");
    
    public static String toFormat(Date date) {
    	if (date==null) {
    		return "날짜값이 전달되지 않았습...";
    	}
        return df.format(date);
    }
}
