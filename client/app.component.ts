import { Component } from '@angular/core';
import * as Highcharts from 'highcharts/highstock';

const fs = require('fs');

@Component({
  selector: 'currencies-app',
  template: `${fs.readFileSync(__dirname + '/app.component.html')}`
})

export class AppComponent {
  Highcharts: typeof Highcharts = Highcharts;

  chartOptions: Highcharts.Options = {
    rangeSelector: {
      selected: 1
    },

    title: {
      text: 'EUR -> PLN'
    },

    series: [{
      data: [
        [
          1509370200000,
          166.72
        ],
        [
          1509456600000,
          169.04
        ],
        [
          1509543000000,
          166.89
        ],
        [
          1509629400000,
          168.11
        ]
      ],
      tooltip: {
        valueDecimals: 2
      }
    }]
  };

  constructor() {}
}
