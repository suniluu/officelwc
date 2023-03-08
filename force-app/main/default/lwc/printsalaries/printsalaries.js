import { LightningElement } from 'lwc';

export default class FilterSalaries extends LightningElement 
{
    empList=[
        {
            id:100,
            esalary:75000
        },
        {
            id:200,
            esalary:85000
        },
        {
            id:300,
            esalary:8000
        },
        {
            id:400,
            esalary:8600
        },
        {
            id:500,
            esalary:65000
        }

    ]

    empl=this.empList.filter(function(currentItem,index,array){
        return currentItem.esalary <50000
    })
}