import { Component } from '@angular/core';
import { LaravelPassportService } from 'laravel-passport';
import {NavController} from '@ionic/angular'

@Component({
  selector: 'app-home',
  templateUrl: 'home.page.html',
  styleUrls: ['home.page.scss'],
})
export class HomePage {

  constructor(private laravelP: LaravelPassportService, public navCtrl: NavController) { }

  logout()
  {
    this.laravelP.logout();
    this.navCtrl.navigateRoot('/login');
  }
}
