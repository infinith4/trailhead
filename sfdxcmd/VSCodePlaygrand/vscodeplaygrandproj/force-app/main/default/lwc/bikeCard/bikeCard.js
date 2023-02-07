import { LightningElement } from 'lwc';
import getAllRecordsCount from '@salesforce/apex/CustomObject01Controller.getAllRecordsCount';
import getAllShareRecordsCount from '@salesforce/apex/CustomObject01Controller.getAllShareRecordsCount';

export default class BikeCard extends LightningElement {
  countData;
  countShareData;
  count = getAllRecordsCount();
  name = 'Electra X4--';
  description = 'A sweet bike built for comfort.';
  category = 'Mountain';
  material = 'Steel';
  price = '$2,700';
  pictureUrl = 'https://s3-us-west-1.amazonaws.com/sfdc-demo/ebikes/electrax4.jpg';
  
  countNum(){
    getAllRecordsCount()
    .then(result => {
        console.log(result);     
        this.countData = result;
    })        
  }

  countShareNum(){
    getAllShareRecordsCount()
    .then(result => {
        console.log(result);     
        this.countShareData = result;
    })        
  }

}