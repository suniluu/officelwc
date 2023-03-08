import { LightningElement } from 'lwc';

export default class HelloWorld extends LightningElement {
 greetings
    bye='Bye!!!'
    handlechange(event){
        this.greetings=event.target.value

    }
    
}