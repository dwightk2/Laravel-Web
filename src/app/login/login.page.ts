import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators, ReactiveFormsModule  } from '@angular/forms';
import { ModalController } from '@ionic/angular';
import { LaravelPassportService } from 'laravel-passport';
import { Router } from '@angular/router';

@Component({
  selector: 'app-login',
  templateUrl: './login.page.html',
  styleUrls: ['./login.page.scss'],
})
export class LoginPage implements OnInit {

  user: FormGroup;

  constructor(
    public modalController: ModalController,
    public formBuilder: FormBuilder,
    private laravelPassportService: LaravelPassportService,
    private router : Router
  ) {
    this.user = this.formBuilder.group({
      email: ['', Validators.required],
      password: ['', Validators.required]
    });
  }

  ngOnInit() {
  }

  close() {
    this.modalController.dismiss();
  }

  login() {
    const user = this.user.value;
    this.laravelPassportService.loginWithEmailAndPassword(user.email, user.password).subscribe(
      res => {
        this.router.navigate(['/home']);
      },
      err => {
        console.log(err);
      },
      () => {
        console.log('completed');
      }
    );
  }

}
