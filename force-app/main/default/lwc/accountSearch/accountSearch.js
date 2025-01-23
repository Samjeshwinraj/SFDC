import { LightningElement,track,wire } from 'lwc';
import getAccounts from '@salesforce/apex/AccountController.getAccounts';

export default class AccountSearch extends LightningElement {
    searckey;
    @wire(getAccounts,{strAccountName: '$searchKey'}) accounts;
    handleKeyChange(event){
        this.searckey=event.target.value;
    }

}