import { LightningElement, wire } from 'lwc';
import IdOfUser from '@salesforce/schema/account';
import { getRecord } from 'lightning/uiRecordApi';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

const FIELDS = [
    'account.Name',
    'account.Image__c'
];

export default class UserImage extends LightningElement {

    userId = IdOfUser;
    name;
    imageURL;

    connectedCallback() {

       
        console.log( 'Fields are ' + JSON.stringify( FIELDS ) );
        
    }

    @wire(getRecord, { recordId: '$userId', fields: FIELDS })
    wiredRecord({ error, data }) {

        if ( error ) {

            let message = 'Unknown error';
            if (Array.isArray(error.body)) {
                message = error.body.map(e => e.message).join(', ');
            } else if (typeof error.body.message === 'string') {
                message = error.body.message;
            }
            this.dispatchEvent(
                new ShowToastEvent({
                    title: 'Error loading Account',
                    message,
                    variant: 'error',
                }),
            );

        } else if ( data ) {

            console.log( 'Data is ' + JSON.stringify( data ) );
            this.name = data.fields.Name.value;
            this.imageURL = data.fields.Image__c.value;

        }

    }

}