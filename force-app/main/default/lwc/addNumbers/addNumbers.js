import { LightningElement,track } from 'lwc';

export default class AddNumbers extends LightningElement {
    @track firstNumber=0
    @track secondNumber=0
    @track result=0
    handlechange(event){
        if(event.target.name==='fnumber'){
            this.firstNumber=event.target.value
        }
        if(event.target.name==='snumber'){
            this.secondNumber=event.target.value
        }
        this.result=parseInt(this.firstNumber)+parseInt(this.secondNumber)
    }

}