import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { FormsModule,ReactiveFormsModule } from '@angular/forms';
//import { SQLite, SQLiteObject } from '@ionic-native/sqlite/ngx';

import { IonicModule } from '@ionic/angular';

import { VotePageRoutingModule } from './vote-routing.module';

import { VotePage } from './vote.page';

@NgModule({
  imports: [
    CommonModule,
    FormsModule,
    IonicModule,
    ReactiveFormsModule,
    //SQLite,
    //SQLiteObject,
    VotePageRoutingModule
  ],
  declarations: [VotePage]
})
export class VotePageModule {}
