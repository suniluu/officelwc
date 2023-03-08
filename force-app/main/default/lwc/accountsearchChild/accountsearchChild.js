import { LightningElement,api,track,wire } from 'lwc';
import getAccountsInd from '@salesforce/apex/AccountController4.getAccountsInd';
export default class AccountsearchChild extends LightningElement {
    
    @api industry
    @track data
    @track error
    
    @track columns=[
        {label:'Name',fieldName:'Name',type:'text'},
        {label:'Phone',fieldName:'Phone',type:'phone'},
        {label:'Name',fieldName:'Name',type:'text'},
        {label:'Industry',fieldName:'Industry',type:'text'}
    ];

  
addittionHandler(){
    getAccountsInd({Industry:this.industry})
        .then(result=>{
            this.data=result;
        })
        .catch(error=>{
            this.error=error;
        })

}
}