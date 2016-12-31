import {
  Component,
  OnInit,
} from '@angular/core';
import { ActivatedRoute } from '@angular/router';

import { Person } from '../../../models';
import { PersonService } from '../../../services';

@Component({
  selector: 'conference-person-view',
  templateUrl: './person-view.template.html',
  styleUrls: [ './person-view.styles.scss' ],
})
export class PersonViewComponent implements OnInit {

  public person: Person;

  constructor (
    private route: ActivatedRoute,
    private personService: PersonService,
  ) { }

  ngOnInit() {
    this.person = this.route.snapshot.data['person'];
  }
}
