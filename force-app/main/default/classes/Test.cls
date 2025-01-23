/**
 * @File Name          : Test.cls
 * @Description        : 
 * @Author             : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Group              : 
 * @Last Modified By   : ChangeMeIn@UserSettingsUnder.SFDoc
 * @Last Modified On   : 1/30/2020, 6:18:33 PM
 * @Modification Log   : 
 * Ver       Date            Author      		    Modification
 * 1.0    1/30/2020   ChangeMeIn@UserSettingsUnder.SFDoc     Initial Version
**/
public with sharing class Test {
    public Test() {
     List<Account> v1 = [select Name from Account];
     System.debug(v1);
    }
}