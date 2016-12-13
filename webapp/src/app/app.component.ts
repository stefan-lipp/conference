/*
 * Angular 2 decorators and services
 */
import { Component, ViewEncapsulation } from '@angular/core';

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
export class AppComponent {

  public name: string = 'Conference Tool';

}
