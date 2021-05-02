import consumer from "./consumer"

consumer.subscriptions.create("PostChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
    console.log("...:::CONNECTED:::...")
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
    console.log("disconnected")
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel
    console.log("Rx: ", data)
  }
});
