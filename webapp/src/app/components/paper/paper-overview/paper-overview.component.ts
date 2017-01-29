import {
  Component,
  OnInit,
  Input,
} from '@angular/core';
import { Router } from '@angular/router';

import { Paper } from '../../../models';
import { PaperService } from '../../../services';

@Component({
  selector: 'conference-paper-overview',
  templateUrl: './paper-overview.template.html',
  styleUrls: [ './paper-overview.style.scss' ],
})
export class PaperOverviewComponent implements OnInit {

  /** Current filter query */
  public filterQuery: string = '';

  /** Subset of all papers */
  public selectedPapers: Paper[] = [ ];

  /** List of all available papers */
  private allPapers: Paper[] = [ ];

  /**
   * Constructor for the papers component.
   */
  constructor (
    private paperService: PaperService,
    private router: Router,
  ) { }
  /**
   * Gets all papers of the conference
   *
   * @memberof OnInit
   */
  public ngOnInit () {
    this.paperService.getAll().subscribe(papers => {
      this.allPapers = papers;
      this.selectedPapers = papers;
    });
  }

  /** Setter for allpapers */
  @Input()
  public set papers (papers: Paper[]) {
    this.allPapers = papers;
  }

  /** Getter for allpapers */
  public get papers (): Paper[] {
    return this.allPapers;
  }

  /**
   * Sets selectedpapers to all papers from papers whoose title contain filterQuery
   *
   * @return {void}
   */
  public filter (): void {
    if (this.filterQuery.length) {
      this.selectedPapers = this.allPapers.filter(
        paper => paper.title.toLowerCase().includes(this.filterQuery.toLowerCase())
      );
    } else {
      this.selectedPapers = this.papers;
    }
  }

}
