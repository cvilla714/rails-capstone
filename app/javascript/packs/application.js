import { start as ujsStart } from '@rails/ujs';
import { start as turbolinksStart } from 'turbolinks';
import { start as activestorageStart } from '@rails/activestorage';
import '../channels';

import 'bootstrap/dist/js/bootstrap';
import '../stylesheets/application.scss';
import '@fortawesome/fontawesome-free/js/all';

document.addEventListener('turbolinks:load', () => {
  $('[data-toggle="tooltip"]').tooltip();
  $('[data-toggle="popover"]').popover();
});

ujsStart();
turbolinksStart();
activestorageStart();
