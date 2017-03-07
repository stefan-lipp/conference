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

  private username: string;
  private conference: Conference = new Conference();

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
