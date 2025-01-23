global class OpportunityUpdateBatch implements Database.batchable<sobject>,Schedulable,Database.Stateful{

    // instance member to retain state across transactions
    global Integer recordsProcessed = 0;
    global Integer recordsPickedup=0;
    
    global Database.QueryLocator start(Database.BatchableContext BC){
       
        return Database.getQueryLocator('select Id,Amount from Opportunity where CreatedDate=today limit 50000');
        
    }


    global void execute(Database.BatchableContext BC,List<Opportunity>OpptyList){
    
        List<Opportunity> OpptyListToUpdate=new list<Opportunity>();
        
      if(OpptyList!=null){
        
        recordsPickedup=recordsPickedup+OpptyList.size();
        
        try{
        
            for(Opportunity Oppty:OpptyList){
            
            Oppty.Amount=10000;
            
            OpptyListToUpdate.add(Oppty);
            
            recordsProcessed = recordsProcessed+1;
             }
             
            if(OpptyListToUpdate.size()>=1)
            {
            Update OpptyListToUpdate;
            }
        }
        catch(Exception e){
        
            system.debug('Exception Caught at Line number in OpportunityUpdateBatch : '+e.getLineNumber() +' message' + e.getMessage());
 
        }
        
       }
    }
      
    global void finish(Database.BatchableContext BC){
    
         system.debug('@@@Batch Executed Successfully!!!');
         AsyncApexjob job = [SELECT Id, Status, NumberOfErrors, 
            JobItemsProcessed,
            TotalJobItems, CreatedBy.Email
            FROM AsyncApexJob
            WHERE Id = :BC.getJobId()];
         Messaging.reserveSingleEmailCapacity(3);
         Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage ();
         List<String>sendTo = new list<String>{'krishnasamys@chn.srmtech.com','samjeshwinrajpk96@gmail.com','samjeshwinrajp@chn.srmtech.com'};
         mail.setToAddresses(sendTo);
         mail.setReplyTo('samjeshwinrajpk96@gmail.com');
         mail.setSenderDisplayName('Sam Batch testing');
         mail.setSubject('Batch process update');
         //set to false so that BCC of my email id will be ignored
         mail.setBccSender(false);
         // The email address of the user executing the Apex Code will be used
         mail.setUseSignature(false);
         
        mail.setPlainTextBody('Records being processed: '+recordsProcessed+','+'Records being picked '+ recordsPickedup);
       
        Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail },false);
    }
    
    global void execute(SchedulableContext SC){
    
        OpportunityUpdateBatch batch=new OpportunityUpdateBatch();
        Id batchprocessid = Database.executeBatch(batch,500);    
    }
    
}