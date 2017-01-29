import {
  Component,
  Input,
  OnInit,
} from '@angular/core';
import { ActivatedRoute } from '@angular/router';

import { Paper } from 'app/models';
import {
  PaperService,
  AuthService,
} from 'app/services';

@Component({
  selector: 'conference-paper-view',
  templateUrl: './paper-view.template.html',
  styleUrls: [ './paper-view.styles.scss' ],
})
export class PaperViewComponent implements OnInit {

  @Input()
  public paper: Paper;

  public showLocation: boolean = false;

  constructor (
    private route: ActivatedRoute,
    private paperService: PaperService,
    public authService: AuthService,
  ) { }

  /**
   * Gets an paper without paper via the Resolver
   * and fetches paper (incl. Paper)
   *
   * @memberof OnInit
   */
  public ngOnInit() {
    this.route.data.subscribe((data: { paper: Paper }) => this.paper = data.paper);
  }

}
