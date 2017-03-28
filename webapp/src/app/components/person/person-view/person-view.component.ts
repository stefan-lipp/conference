import {
  Component,
  OnInit,
} from '@angular/core';
import { ActivatedRoute } from '@angular/router';

import {
  Paper,
  Person,
  ConferenceEvent,
} from '../../../models';
import { PersonService } from '../../../services';

@Component({
  selector: 'conference-person-view',
  templateUrl: './person-view.template.html',
  styleUrls: [ './person-view.styles.scss' ],
})
export class PersonViewComponent implements OnInit {

  public person: Person;
  public papers: Paper[];
  public talks: ConferenceEvent[];

  constructor (
    private route: ActivatedRoute,
    private personService: PersonService,
  ) { }

  /**
   * @memberOf OnInit
   */
  public ngOnInit () {
    this.route.data.subscribe(
      (data: { person: Person, papers: Paper[], talks: ConferenceEvent[] }) => {
      this.person = data.person;
      this.papers = data.papers;
      this.talks = data.talks;
    });
  }
}
