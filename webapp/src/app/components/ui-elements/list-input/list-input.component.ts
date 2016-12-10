import {
  Component,
  Input,
  HostBinding,
} from '@angular/core';
import { ControlValueAccessor, NG_VALUE_ACCESSOR, NG_VALIDATORS } from '@angular/forms';

@Component({
  selector: 'conference-list-input',
  templateUrl: './list-input.template.html',
  providers: [
    {
      provide: NG_VALUE_ACCESSOR,
      useExisting: ListInputComponent,
      multi: true,
    },
  ],
})
export class ListInputComponent implements ControlValueAccessor {

  @Input()
  @HostBinding()
  public title: string = '';

  private disabledFlag: boolean = false;
  private valueList: any[] = [ ];

  @Input()
  @HostBinding('attr.disabled')
  public set disabled (value: boolean) {
    this.disabledFlag = (value != null && `${value}` !== 'false');
  }
  public get disabled (): boolean {
    return this.disabledFlag;
  }

  public get value (): any[] {
    return this.valueList;
  }

  public set value (value: any[]) {
    this.valueList = value;
    this.onChange(this.value);
  }

  public add (event: Event, input: HTMLInputElement) {
    event.preventDefault();

    if (input.value) {
      this.value.push(input.value);
      this.value = this.value.slice();
      input.value = '';
      input.focus();
    }
  }

  public remove (event: Event, index: number) {
    event.preventDefault();

    this.value.splice(index, 1);
    this.value = this.value.slice();
  }

  public onChange = (_: any) => undefined;
  public onTouched = () => undefined;

  public writeValue(value: any): void {
    this.value = value;
  }

  public registerOnChange(fn: (_: any) => void): void { this.onChange = fn; }

  public registerOnTouched(fn: () => void): void { this.onTouched = fn; }

  public setDisabledState(isDisabled: boolean): void {
    this.disabled = isDisabled;
  }
}
