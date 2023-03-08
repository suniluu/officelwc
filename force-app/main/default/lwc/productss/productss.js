 import { LightningElement,track,api,wire} from 'lwc';
import productSearchs from '@salesforce/apex/searchproductfamily.productSearchs';
export default class Productss extends LightningElement {
    @track cat
    handleChange1(event) {
        this.cat=event.target.value;
      }
      @api cat
      @track data
      @track error
      
      @track columns=[
          {label:'ProductName',fieldName:'Name',type:'text'},
          {label:'Family',fieldName:'Family',type:'text'}
         
          
      ];
  
    
  addittionHandler(){
    productSearchs({cat:this.cat})
          .then(result=>{
              this.data=result;
          })
          .catch(error=>{
              this.error=error;
          })
  
  }
  }
