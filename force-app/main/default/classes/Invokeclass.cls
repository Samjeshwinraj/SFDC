public class Invokeclass {
@AuraEnabled
Public static account[]  getAccountData(){
    list<Account> ac= [select Name,Site,Active__c from account limit 4 ];
    System.debug(ac);
    return ac;

        }
    }