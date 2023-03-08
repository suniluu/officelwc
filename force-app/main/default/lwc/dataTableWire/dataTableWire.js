import { LightningElement,track,wire } from 'lwc';
import getAccounts2 from '@salesforce/apex/AccountController3.getAccounts2';

export default class DataTableWire extends LightningElement {
    @track data
    @track columns=[
        {label:'Name',fieldName:'Name',type:'text'},
        {label:'Phone',fieldName:'Phone',type:'phone'},
        {label:'Name',fieldName:'Name',type:'text'},
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
}
}