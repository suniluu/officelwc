import { LightningElement,track } from 'lwc';

export default class AccountSearchParnet extends LightningElement {
    @track industry
    handleChange1(event) {
        this.industry=event.target.value;
      }
}