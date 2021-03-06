import { Component } from '@angular/core';
import { IonicPage, NavController, NavParams } from 'ionic-angular';
import { Geolocation, Geoposition } from '@ionic-native/geolocation';
declare var google;
/**
 * Generated class for the ApoyoPage page.
 *
 * See https://ionicframework.com/docs/components/#navigation for more info on
 * Ionic pages and navigation.
 */

@IonicPage()
@Component({
  selector: 'page-apoyo',
  templateUrl: 'apoyo.html',
})
export class ApoyoPage {
  latitude: number=0;
  longitude: number=0;
  map: any;
  marker: any;

  constructor(public navCtrl: NavController, public navParams: NavParams, private geolocation: Geolocation) {
  }

  ionViewDidLoad() {
    this.getPosition();
  }

  getPosition():any{
    this.geolocation.getCurrentPosition().then(response => {
      this.loadMap(response);
    })
    .catch(error =>{
      console.log(error);
    })
  }

  loadMap (position: Geoposition){
    let latitude = position.coords.latitude;
    let longitude = position.coords.longitude;
    console.log(latitude, longitude);
    // create a new map by passing HTMLElement
    let mapEle: HTMLElement = document.getElementById('map');
    // create LatLng object
    let myLatLng = {lat: latitude, lng: longitude};
    // create map
    this.map = new google.maps.Map(mapEle, {
     center: myLatLng,
     zoom: 12
  });
  google.maps.event.addListenerOnce(this.map, 'idle', () => {
    let marker = new google.maps.Marker({
       position: myLatLng,
       map: this.map,
       title: 'Tu Ubicación!'
    });
    mapEle.classList.add('show.map');
   });
  }

}
