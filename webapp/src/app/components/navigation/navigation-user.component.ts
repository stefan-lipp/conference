import {
  Component,
  OnInit,
} from '@angular/core';

import { AuthService } from '../../services';

@Component({
  selector: 'conference-navigation-user',
  template: `
    <span md-button>
      <i class="material-icons">person_outline</i>
      <span class="username">{{ username }}</span>
    </span>
  `,
})
export class NavigationUserComponent implements OnInit {

  private username: string;

  constructor(private authService: AuthService) { }

  /**
   * @memberof OnInit
   */
  public ngOnInit () {
    this.username = this.authService.userName;
  }

}
