import {
  Component,
  OnInit,
} from '@angular/core';

import { PersonService } from '../../services';

@Component({
  selector: 'conference-navigation-user',
  template: `
    <button md-button routerLink="/settings">
      <i class="material-icons">person_outline</i>
      <span>{{ username }}</span>
    </button>
    `,
  styles: [ `
    button {
      border: thin solid #fff;
      border-radius: 1em;
      margin-right: 1em;
      padding: 0 .6em;
    }

    span {
      padding-left: .2em;
    }

    @media only screen and (max-width: 500px) {
       span {
        display: none;
      }
    }
    ` ],
})
export class NavigationUserComponent implements OnInit {

  private username: string;

  constructor(private personService: PersonService) { }

  /**
   * @memberof OnInit
   */
  public ngOnInit () {
    this.personService.getLoggedInPerson().subscribe(person =>
      this.username = person.name
    );
  }

}
