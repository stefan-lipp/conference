import {
  Component,
  OnInit,
} from '@angular/core';

import { PersonService } from '../../services';

@Component({
  selector: 'conference-navigation-user',
  template: `
    <button md-button>
      <i class="material-icons">person_outline</i>
      {{ username }}
    </button>
    `,
  styles: [`
    button {
      border: thin solid #fff;
      border-radius: 1em;
      margin-right: 1em;
      padding: 0 .6em;
    }
    i {
      padding-right: .2em;
    }
    `],
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
