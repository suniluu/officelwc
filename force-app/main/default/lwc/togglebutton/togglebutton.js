import { LightningElement } from 'lwc';

export default class Togglebutton extends LightningElement {
    isVisible=false
   
    handleevent(event)
    {
        this.isVisible=true
    }
}