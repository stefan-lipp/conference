import {
  Component,
  OnInit,
} from '@angular/core';
import {
  AuthService,
} from '../../services';
import { Conference } from '../../models';

@Component({
  selector: 'conference-navigation',
  templateUrl: 'navigation.template.html',
  styleUrls: [ 'navigation.style.scss' ],
})
export class NavigationComponent implements OnInit {

  public conference = Conference;

  private username: string;

  constructor (
    private authService: AuthService,
  ) { }

  /**
   * @memberof OnInit
   */
  public ngOnInit () {
    this.username = this.authService.userName;
  }

}
