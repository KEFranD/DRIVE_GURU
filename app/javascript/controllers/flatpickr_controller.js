import { Controller } from 'stimulus';
import flatpickr from 'flatpickr';

export default class extends Controller {
  connect() {
    flatpickr(this.element, {
      enableTime: false,
      altInput: true,
      altFormat: "F j, Y",
      minDate: "today"
    });
  }
}
