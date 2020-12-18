import consumer from "./consumer"

$(function() {
  const chatChannel = consumer.subscriptions.create("RoomChannel", {
    connected() {
      // Called when the subscription is ready for use on the server
    },

    disconnected() {
      // Called when the subscription has been terminated by the server
    },

    received: function(data) {
      // return  alert(data['message']);
      return $('#messages').append(data['message']);
      // Called when there's incoming data on the websocket for this channel
    },

    speak: function(message) {
      return this.perform('speak', {
        message: message
      });
    }
  });


  $(document).on('keypress', '[data-behavior~=room_speaker]', function(event) {
    if (event.keyCode === 13) {
      chatChannel.speak(event.target.value);
      event.target.value = '';
      return event.preventDefault();
    }
  });
});