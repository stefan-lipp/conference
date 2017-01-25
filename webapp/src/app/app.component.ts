import {
  Component,
  OnInit,
  ViewEncapsulation,
} from '@angular/core';

import {
  ApiService,
  AppService,
} from 'app/services';

/*
 * App Component
 * Top Level Component
 */
@Component({
  selector: 'conference-app',
  encapsulation: ViewEncapsulation.None,
  styleUrls: [
    '../assets/sass/main.scss',
    '../assets/sass/theme.scss',
  ],
  templateUrl: 'app.template.html',
})
export class AppComponent implements OnInit {

  public name: string = 'Conference Tool';

  constructor (
    private apiService: ApiService,
    private appService: AppService,
  ) { }

  public ngOnInit () {
    this.apiService.getMeta().subscribe(meta => this.appService.metadata = meta);
  }

}
