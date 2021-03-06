var app = app || {};
app.Views = app.Views || {};



app.Views.FlightListView = Backbone.View.extend({
  tagName: 'li',
  events: {
    'click': 'viewFlight'
  },
  initialize: function () {},
  render: function () {
    console.log('flight list view .js')
    var template = $('#flightListView').html();
    var flightListHTML = Handlebars.compile(template);
    this.$el.html(flightListHTML({flight: this.collection.toJSON()}));
    $('#main').append(this.el);
  },
  viewFlight: function () {
    // app.router.navigate('flights/' + this.model.get('reservations'), {trigger: true});
  }
});
