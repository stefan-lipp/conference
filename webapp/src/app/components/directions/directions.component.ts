import {
  Component,
  Input,
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
  public imageUrl: string = '../../../assets/img/roomplans/filename.png';
  public showBuilding: string = 'https://www.google.de/maps/@48.14966,11.5656715,17z';
  public planRoute: string =
    'https://www.google.de/maps/dir//48.1494846,11.5675383/@48.14966,11.5656715,15z';

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
    this.route.data.subscribe((data: { room: Room }) => {
      this.room = data.room;
      this.imageUrl = this.imageUrl.replace('filename', data.room.map);
    });
  }
}
