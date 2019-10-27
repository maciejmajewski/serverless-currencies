import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { AppComponent } from './app.component';
import { MdlModule } from '@angular-mdl/core';
import { HighchartsChartModule } from 'highcharts-angular';

@NgModule({
  imports: [
    BrowserModule,
    MdlModule,
    HighchartsChartModule
  ],
  bootstrap: [
    AppComponent
  ],
  declarations: [
    AppComponent
  ]
})

export class AppModule {
}
