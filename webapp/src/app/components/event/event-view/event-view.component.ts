import {
  Component,
  Input,
} from '@angular/core';
import { ActivatedRoute } from '@angular/router';

import { Event } from '../../../models';

@Component({
  selector: 'conference-event-view',
  templateUrl: './event-view.template.html',
  styleUrls: [ './event-view.styles.scss' ],
})
export class EventViewComponent{




  @Input()
  public event: Event;

  public showPaper: boolean = false;
  public showLocation: boolean = false;

  constructor (
    private route: ActivatedRoute,
  ) { }

 


/**
 * method to get the String of the EventType Enum for HTML representation
 */
public eventTypeString (): string{
  let stringRepr = '';
  switch(this.event.type){
    case 0: stringRepr = 'Research Talk'; break;
    case 1: stringRepr = 'Industry Talk'; break;
    case 2: stringRepr = 'Tutorial'; break;
    case 3: stringRepr = 'Demo'; break;
    case 4: stringRepr = 'Workshop'; break;
    default:  stringRepr = 'General Event'; break;
  } 
  return stringRepr;
}

 /** Methods called from the html template to perform animation
  * 
  *  attention: showPaperinfo and showLocationinfo are clones. 
  */
  public showPaperinfo (): void {
    if (this.showPaper){
      document.getElementById('paperinfo').classList.add('hide');
    } else {
      document.getElementById('paperinfo').classList.remove('hide');
    }
    this.showPaper = !this.showPaper;
  }

  public showLocationinfo (): void {
    if (this.showLocation){
      document.getElementById('locationinfo').classList.add('hide');
    } else {
      document.getElementById('locationinfo').classList.remove('hide');
      this.drawCanvas();
    }
    this.showLocation = !this.showLocation;
  }


 /**
  *  method to build the graphical location information
  *
  * TODO change map with map of VLDB location
  * TODO get drawing data according to event.room
  */
  public drawCanvas (): void{
    
    const canvas: any = document.getElementById('canvas');
    const context = canvas.getContext('2d');
    context.font = "15px Arial";
    context.fillText('reload image', 150,150);
    
    //image set up
    const img = new Image();
    img.src = 'http://www.ma.tum.de/foswiki/pub/Mathematik/AnfahrtCampusGarching/fmi.svg'
    context.drawImage(img, 1, 1, canvas.width , canvas.height);
    
    //draw hint
    const room = [ 100, 80 ]; //room coordinates
    const hint = new Image()
    hint.src = 'https://d30y9cdsu7xlg0.cloudfront.net/png/677417-200.png'
    context.drawImage(hint, room[0], room[1], 25 , 25);

    
  }
}
