import { LightningElement,track,wire } from 'lwc';
import getAccounts2 from '@salesforce/apex/getaccounts3.getAccounts2'
export default class Displayaccountusingdatatable extends LightningElement { @track data
    @track columns=[
        {label:'Name',fieldName:'Name',type:'text'},
        {label:'Phone',fieldName:'Phone',type:'phone'},
        {label:'Type',fieldName:'Type',type:'text'},
        {label:'Industry',fieldName:'Industry',type:'text'}
    ];
@wire(getAccounts2) getAccounts2({error,data})
{
    if(data)
    {
        this.data=data;
    }
    else if(error)
    {
        this.data=undefined;
    }
}}