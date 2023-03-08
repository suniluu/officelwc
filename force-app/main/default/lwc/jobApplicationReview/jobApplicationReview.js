import { LightningElement,api } from 'lwc';
import Review_Rating from'@salesforce/schema/Review_c.Rating_c';
import Review_Assessment__c from'@salesforce/schema/Review_c.Assessment__c';
import Review_JobApplcation from'@salesforce/schema/Job_Application_c.Id';
import {ShowToastEvent} from 'lightning/platformShowToastEvent';
import {NavigationMixin} from 'lightning/navigation';

export default class JobApplicationReview extends NavigationMixin(LightningElement)  {
    @api 
    objectApiName='Review__c';
    fieldList=[Review_Rating,Review_Assessment__c,Review_JobApplcation];
    handleAccountCreate(event){
        const evt= new ShowToastEvent({
            title:"Review Record Created Successfully",
            message:"Record id :"+event.detail.id,
            variant:"success",
        });
    
    this.dispatchEvent(evt);
    this[NavigationMixin.Navigate]({
        type: 'standard__objectPage',
            attributes: {
                objectApiName: 'Job_Application__c',
                actionName: 'home'
            },
    });
  }
}