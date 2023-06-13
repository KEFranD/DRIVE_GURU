import { Controller } from 'stimulus';
import flatpickr from 'flatpickr';

export default class extends Controller {
  static targets = [ "date" ]
  connect() {
    flatpickr(this.dateTarget, {
      enableTime: false,
      altInput: true,
      altFormat: "F j, Y",
      minDate: "today"
    });
  }
}
