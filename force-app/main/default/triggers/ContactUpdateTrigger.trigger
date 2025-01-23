trigger ContactUpdateTrigger on Account (after Update) {

if(trigger.isAfter && trigger.isUpdate){
  AccountTriggerHelper.IsAfterUpdate(trigger.New,trigger.newMap,trigger.oldMap);
    }
    
}