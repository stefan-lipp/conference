import { Component } from '@angular/core';

import { AppService } from 'app/services';

@Component({
  selector: 'conference-overview',
  templateUrl: './overview.template.html',
})
export class OverviewComponent {

  constructor (
    public appService: AppService,
  ) { }

}
