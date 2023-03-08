import { LightningElement,api } from 'lwc';
import p_name from '@salesforce/schema/Position__c.Name';
import p_funcationalarea from '@salesforce/schema/Position__c.Functional_Area__c';
import p_location from '@salesforce/schema/Position__c.Location__c';
import p_minpay from '@salesforce/schema/Position__c.Min_Pay__c';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';



export default class PositionQuickUpdate extends LightningElement {

    @api recordId;
    @api objectApiName;

    fieldList=[p_name,p_funcationalarea,p_location,p_minpay];

    handleSuccess(event)
    {
        const evt = new ShowToastEvent({
            title: "PositionUpdate",
            message: "Position Record:"+ event.detail.fields.Name.value +"isSuccessFully",
            variant:"success",
        });
        this.dispatchEvent(evt);
    }

}