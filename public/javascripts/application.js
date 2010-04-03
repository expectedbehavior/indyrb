// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

function updateNextMeeting(e) {
    var when = new Date(e.time);
    var map_url = "http://maps.google.com/maps?q=" + e.venue_address1 + "," + e.venue_city + "," + e.venue_state + "," + e.venue_zip;

    $("#next_meeting .when").html(when.formatDate("l, F j g:i a"));
    $("#next_meeting .description").html(e.description);
    $("#next_meeting .link").attr('href', e.event_url);
    $("#next_meeting .map").attr("href", map_url);
    $("#next_meeting .map IMG").attr("src", e.venue_map);

    var venue = "";
    venue += "<a href='" + map_url + "'>" + e.venue_name + "</a><br/>";
    venue += e.venue_address1 + "<br/>";
    venue += e.venue_address2 + "<br/>";
    venue += e.venue_city + ", ";
    venue += e.venue_state + " " + e.venue_zip + "<br/>";
    $("#where .address").html(venue);
}

function getEvent() {
    $.getJSON("http://api.meetup.com/events.json/?topic=ruby&groupnum=89&key=6a7801841e16295e1e722e254370&callback=?",
	      function(data) {
		  updateNextMeeting(data.results[0]);
	      } );
}

$(document).ready(function() { getEvent(); });
