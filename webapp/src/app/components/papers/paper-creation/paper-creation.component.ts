import {
  Component,
} from '@angular/core';
import {
  FormGroup,
  FormBuilder,
  Validators,
} from '@angular/forms';

import { ApiService } from '../../../services';

@Component({
  selector: 'conference-paper-creation',
  templateUrl: './paper-creation.template.html',
})
export class PaperCreationComponent {

  public form: FormGroup;

  constructor (
    private formBuilder: FormBuilder,
    private apiService: ApiService,
  ) {
    this.form = this.formBuilder.group({
      title: [ '', Validators.required ],
      abstract: [ '' ],
      url: [ '' ],
      authors: [ [ ] ],
      tags: [ [ ] ],
      keywords: [ [ ] ],
    });
  }

  public create () {
    if (this.form.valid) {
      this.apiService.createPaper(this.form.value)
        .subscribe(success => undefined);
    } else {
      // Show error
    }
  }
}
