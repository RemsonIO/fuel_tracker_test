
document.addEventListener("turbolinks:load", function() {

  flatpickr("#refuel_info_dated_on", {
    enableTime: true,
    maxDate: new Date,
    defaultDate: new Date,
    altFormat: 'M d Y h:i K',
    altInput: true,
    dateFormat: 'U',
    minuteIncrement: 1
  });

});
