Public class myClass{

    Public class CustomException extends Exception{}
   
    Public static Account aQuery(){
        Account theAccount;
        try{
            System.debug('theAccount'+theAccount);
            theAccount=[select id from Account limit 10];
            
        }
         catch(CustomException eX){
            
          System.debug('QException');

        }
        catch(QueryException eX){
            System.debug('QueryException');
            
        }
        finally{
        System.debug('Done.');
        }
        return theAccount;
    }
}