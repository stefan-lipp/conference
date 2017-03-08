import {
  Component,
  Input,
  OnInit,
} from '@angular/core';
import { ActivatedRoute } from '@angular/router';

import { Room } from './../../models';

/** file-upload component  */
@Component({
  selector: 'directions',
  templateUrl: './directions.template.html',
  styleUrls: [ './directions.style.scss' ],
})

export class DirectionsComponent {


  @Input()
  public room: Room;

  /**
   * Constructor for the DirectionsComponent.
   */
  constructor(
    private route: ActivatedRoute,
  ) { }

  /**
   * Gets the room to show via the Resolver
   *
   * @memberof OnInit
   */
  public ngOnInit() {
    this.route.data.subscribe((data: { room: Room }) => this.room = data.room);
  }
}
