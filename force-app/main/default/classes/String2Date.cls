public class String2Date {
    public static Datetime String2Dateconvert(){
    Datetime ConvDate;
    try{
        String strDateTime = '2020/01/30 20:36:00';
        strDateTime=strDateTime.replaceAll('/','-');
        System.debug('@@@strDateTime'+strDateTime);
        Datetime ConvDateGMT=Datetime.valueof(strDateTime);
        Integer offset = UserInfo.getTimezone().getOffset(ConvDateGMT);
        System.debug('@@@offset'+offset);
        ConvDate = ConvDateGMT.addSeconds(offset/1000);
        System.debug('@@@ConvDate'+ConvDate);
        
        }
     Catch(Exception e){
       system.debug('Exception Caught at Line number in String2Dateconvert method:'+e.getLineNumber() +' message' + e.getMessage());

     }
     return ConvDate;
   }
}