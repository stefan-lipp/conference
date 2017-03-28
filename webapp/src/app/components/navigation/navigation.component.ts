import { Component } from '@angular/core';

import { AuthService } from '../../services';
import { Conference } from '../../models';

@Component({
  selector: 'conference-navigation',
  templateUrl: 'navigation.template.html',
  styleUrls: [ 'navigation.style.scss' ],
})
export class NavigationComponent {

  public conference = Conference;

  constructor (public authService: AuthService) { }

}
