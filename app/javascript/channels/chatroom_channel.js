import consumer from "./consumer"

//import "channels/consumer"

//consumer.subscriptions.create({ channel: "ChatroomChannel" })
console.log('Helllllooo from chatroot_channel');

consumer.subscriptions.create("ChatroomChannel", {
   connected() {
     // Called when the subscription is ready for use on the server
   },

   disconnected() {
     // Called when the subscription has been terminated by the server
   },

   received(data) {
     // Called when there's incoming data on the websocket for this channel
   }
 });
