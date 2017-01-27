import {
  Component,
  OnInit,
} from '@angular/core';
import {
  AuthService,
  PersonService,
} from '../../services';

@Component({
  selector: 'conference-navigation',
  templateUrl: 'navigation.template.html',
  styleUrls: [ 'navigation.style.scss' ],
})
export class NavigationComponent implements OnInit {

  private username: string;

  constructor (
    private authService: AuthService,
    private personService: PersonService,
  ) { }

  /**
   * @memberof OnInit
   */
  public ngOnInit () {
    this.personService.getLoggedInPerson().subscribe(person => {
      this.username = person.name;
    });
  }

}
