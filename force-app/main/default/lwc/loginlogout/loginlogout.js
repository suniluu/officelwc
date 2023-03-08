import { LightningElement } from 'lwc';

export default class Loginlogout extends LightningElement {
    
    isVisible=false
    isVisible2=true
    
    handleevent(event)
    {
        this.isVisible=true
        this.isVisible2=false
        
    }
    handleclick(event)
    {
        this.isVisible=false
        this.isVisible2=true
        
       
    }
    
}