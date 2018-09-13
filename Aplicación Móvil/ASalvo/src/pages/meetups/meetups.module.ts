import { NgModule } from '@angular/core';
import { IonicPageModule } from 'ionic-angular';
import { MeetupsPage } from './meetups';

@NgModule({
  declarations: [
    MeetupsPage,
  ],
  imports: [
    IonicPageModule.forChild(MeetupsPage),
  ],
})
export class MeetupsPageModule {}
