package form;

import java.math.BigDecimal;

public class ELOperator {
    
    public static String add(String a, String b) {
        BigDecimal x = new BigDecimal(a) ;
        BigDecimal y = new BigDecimal(b) ;
        return x.add(y).toString();
    }
    
    public static String subtract(String a, String b) {
        BigDecimal x = new BigDecimal(a) ;
        BigDecimal y = new BigDecimal(b) ;
        return x.subtract(y).toString();
    }
    
    
    public static String hello() {
    	return "hello world";
    }
    
}
