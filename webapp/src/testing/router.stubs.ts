import {
  NavigationExtras,
} from '@angular/router';

/** @see https://angular.io/docs/ts/latest/guide/testing.html */

export class RouterStub {
  navigate(commands: any[], extras?: NavigationExtras): Promise<boolean> { return null; }
}
