public class FutureClassLimitsTest {

    @future(callout=true)
    public static void docallouts(){

        for(Integer i=0;i<200;i++){
            Http http=new Http();
            HttpRequest hr=new HttpRequest();
            hr.setMethod('POST');
            hr.setEndpoint('https://google.com');
            http.send(hr);
        }


    }
       @future(callout=true)
    public static void docallouts1(){

        for(Integer i=0;i<200;i++){
            Http http=new Http();
            HttpRequest hr=new HttpRequest();
            hr.setMethod('POST');
            hr.setEndpoint('https://google.com');
            http.send(hr);
        }


    }

}