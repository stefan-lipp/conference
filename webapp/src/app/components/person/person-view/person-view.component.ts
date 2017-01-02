import {
  Component,
  OnInit,
  Input,
} from '@angular/core';
import {
  ActivatedRoute,
} from '@angular/router';

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

  @Input()
  public person: Person;
  @Input()
  public papers: Paper[];
  @Input()
  public talks: ConferenceEvent[];

  constructor (
    private route: ActivatedRoute,
    private personService: PersonService,
  ) {
    this.route.data.subscribe(data => {
      this.person = data['person'];
      this.papers = data['papers'];
      this.talks = data['talks'];
    });
  }

  ngOnInit() {
    this.person = this.route.snapshot.data['person'];
    this.papers = this.route.snapshot.data['papers'];
    this.talks = this.route.snapshot.data['talks'];
  }
}
