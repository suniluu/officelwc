import { LightningElement,track } from 'lwc';
import getAccounts2 from '@salesforce/apex/AccountController3.getAccounts2';
export default class DataTableWithcallback extends LightningElement {
    @track data
    @track error
    @track columns=[
        {label:'Name',fieldName:'Name',type:'text'},
        {label:'Phone',fieldName:'Phone',type:'phone'},
        {label:'Name',fieldName:'Name',type:'text'},
        {label:'Industry',fieldName:'Industry',type:'text'}
    ];
    connectedCallback(){
        getAccounts2()
            .then(result=>{
                this.data=result;
            })
            .catch(error=>{
                this.error=error;
            })
        
    }
}