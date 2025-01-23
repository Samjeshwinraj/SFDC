public class AccountTriggerHelper{

    public static void IsAfterUpdate (List<Account>Accounts,Map<id,Account>AccountsMap,Map<id,Account>AccountsOldMap) {
        
        UpdatePhoneNumber(Accounts,AccountsMap,AccountsOldMap);
        
        }
        
    public static void UpdatePhoneNumber(List<Account>Accounts,Map<id,Account>AccountsMap,Map<id,Account>AccountsOldMap){
            
            System.debug('@@@Inside update method');
            
            List<contact> ContactListToUpdate=new list<contact>();
            
            List<contact>ContactList=[select id,Phone from contact where Account.id =:AccountsMap.Keyset()];
            
            for(Account acc : Accounts){
            
                if(acc.Phone!=AccountsOldMap.get(acc.id).Phone && acc.Phone!=null ){
                
                    System.debug('@@@Inside if loop');
                    
                    for(contact con:ContactList){
                    
                        con.Phone=acc.Phone;
                        ContactListToUpdate.add(con);
                        System.debug('@@@Inside var val allocation'+ContactListToUpdate);
                    
                    }
                
                
                }
            
            
            }
            Database.SaveResult[] srList=Database.update(ContactListToUpdate,false);
            
            for (Database.SaveResult sr : srList) {
                if (sr.isSuccess()) {
                    System.debug('Successfully inserted account. Account ID: ' + sr.getId());
                }
                else {
                    // Operation failed, so get all errors                
                    for(Database.Error err : sr.getErrors()) {
                        System.debug('The following error has occurred.');                    
                        System.debug(err.getStatusCode() + ': ' + err.getMessage());
                        System.debug('Account fields that affected this error: ' + err.getFields());
                    }
             }
       
        }

    
    }

}