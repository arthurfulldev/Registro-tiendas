import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { BnnComponent } from './bnn/bnn.component';

@NgModule({
  declarations: [
    BnnComponent
  ],
  imports: [
    BrowserModule
  ],
  providers: [],
  bootstrap: [ BnnComponent ]
})

export class AppModule { }
