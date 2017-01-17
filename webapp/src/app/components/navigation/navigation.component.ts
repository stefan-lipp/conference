import { Component } from '@angular/core';
import { AuthService } from '../../services';

@Component({
  selector: 'conference-navigation',
  templateUrl: 'navigation.template.html',
  styleUrls: [ 'navigation.style.scss' ],
})
export class NavigationComponent {

  constructor (
    public authService: AuthService,
  ) {}

}
