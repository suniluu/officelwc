trigger product2trigger on Product2 (before update) {
if(trigger.isbefore && trigger.isupdate)
    {
        Product2Handler.productfamily(trigger.new);
    }
}