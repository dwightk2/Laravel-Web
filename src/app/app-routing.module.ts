import { NgModule } from '@angular/core';
import { PreloadAllModules, RouterModule, Routes } from '@angular/router';
import { LPAuthGuard } from 'laravel-passport';

const routes: Routes = [
  {
    path: 'vote',
    loadChildren: () => import('./vote/vote.module').then( m => m.VotePageModule)
  },
  {
    path: 'home', canActivate : [LPAuthGuard], data: { loginRoute: '/login'}, 
    loadChildren: () => import('./home/home.module').then( m => m.HomePageModule), 
  },
  {
    path: '', 
    redirectTo: 'vote',
    pathMatch: 'full'
  },
  {
    path: 'login',
    loadChildren: () => import('./login/login.module').then( m => m.LoginPageModule)
  },
  
];

@NgModule({
  imports: [
    RouterModule.forRoot(routes, { preloadingStrategy: PreloadAllModules })
  ],
  exports: [RouterModule]
})
export class AppRoutingModule { }
