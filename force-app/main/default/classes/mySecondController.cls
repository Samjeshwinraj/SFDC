public class mySecondController {
    Account account;

    public Account getAccount() {
        if(account == null) account = new Account();
        return account;
    }

    public PageReference save() {
        // Add the account to the database. 
        insert account;
        // Send the user to the detail page for the new account.
        PageReference acctPage = new PageReference('https://renshuu-dev-ed.my.salesforce.com/SiteLogin');
        acctPage.setRedirect(true);
        return acctPage;
    }
}