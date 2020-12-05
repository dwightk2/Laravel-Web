import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, Validators, ReactiveFormsModule } from '@angular/forms';
import { NavController } from '@ionic/angular';
//import { SQLite, SQLiteObject } from '@ionic-native/sqlite/ngx';

@Component({
  selector: 'app-vote',
  templateUrl: './vote.page.html',
  styleUrls: ['./vote.page.scss']
})
export class VotePage implements OnInit {

  votechar: FormGroup;

  constructor(
    public formBuilder: FormBuilder,
    public navCtrl: NavController, 
    //public sqlite: SQLite
  ) {
    this.votechar = this.formBuilder.group({
      email: ['', Validators.required],
      name: ['', Validators.required],
      hero: ['', Validators.required],
      villain: ['', Validators.required]
    });
  }

  ngOnInit() {

  }

  vote() {
    const votein = this.votechar.value;
    //this.sqlite.create({
    //  name: 'data.db',
    //  location: 'default'
    //})
    //  .then((db: SQLiteObject) => {
    //    db.executeSql('insert into vote (email,name,hero,villain) values (?,?,?,?)', [votein.email, votein.name, votein.hero, votein.villain]);
    //  })
    //  .catch(e => console.log(e));
  }

  login() {
    this.navCtrl.navigateRoot('/login');
  }

}
