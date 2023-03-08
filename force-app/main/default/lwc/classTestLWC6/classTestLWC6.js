import { LightningElement } from 'lwc';
import Name from '@salesforce/schema/Position__c.Name';  
import Functional_Area from '@salesforce/schema/Position__c.Functional_Area__c';
import Status from '@salesforce/schema/Position__c.Status__c';
import Location from '@salesforce/schema/Position__c.Location__c';
import OpenDate from '@salesforce/schema/Position__c.Open_Date__c';
import Hireby from '@salesforce/schema/Position__c.Hire_By__c';

import { ShowToastEvent } from 'lightning/platformShowToastEvent'; 

export default class ClassTestLWC6 extends LightningElement {
    objectApiName = 'Position__c'; 
    positionFields = [Name, Functional_Area,Status, Location,OpenDate,Hireby]; 

    handleAccountCreated(){
        const showSuccess = new ShowToastEvent({
            title: 'Success!!',
            message: 'Position has been created',
            variant: 'Success',
        });
        this.dispatchEvent(showSuccess);
    }
}