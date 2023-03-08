import { LightningElement } from 'lwc';
import signInTemplate from './signInTemplate.html'
import signupTemplate from './signupTemplate.html'
import renderTemplate from './renderMultipleDemo.html'
export default class renderMultipleDemo extends LightningElement {
    selectedBtn=''
    render(){ 
        return this.selectedBtn === 'Signup' ? signupTemplate :
                this.selectedBtn === 'Signin' ? signInTemplate:
                renderTemplate
    }

    handleClick(event){ 
        this.selectedBtn = event.target.label
    }
    submitHandler(event){ 
        console.log(`${event.target.label} Successfully!!`)
    }
}