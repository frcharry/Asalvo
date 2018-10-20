import { Component } from '@angular/core';
import { NavController } from 'ionic-angular';
import { AlertController } from 'ionic-angular';

@Component({
  selector: 'page-home',
  templateUrl: 'home.html'
})
export class HomePage {

  constructor(public navCtrl: NavController, public alertCtrl: AlertController) {

  }
  showConfirm() {
    const confirm = this.alertCtrl.create({
      title: 'Te sientes en peligro?',
      message: 'Deseas alertar a tus contactos elegidos?',
      buttons: [
        {
          text: 'Cancela',
          handler: () => {
            console.log('Disagree clicked');
          }
        },
        {
          text: 'Alerta',
          handler: () => {
            console.log('Agree clicked');
          }
        }
      ]
    });
    confirm.present();
  }
}
