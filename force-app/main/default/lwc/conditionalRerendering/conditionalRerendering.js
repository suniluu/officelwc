import { LightningElement } from 'lwc';

export default class ConditionalRerendering extends LightningElement {
    isVisible=false
    isVisible2=false
    handleevent(event)
    {
        this.isVisible=true
    }
    handleclick(event)
    {
        this.isVisible2=true
    }
}