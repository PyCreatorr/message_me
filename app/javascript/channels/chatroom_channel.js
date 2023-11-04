import consumer from "./consumer";

import { scroll_bottom, submit_message } from "../application.js";

//import "channels/consumer"

//consumer.subscriptions.create({ channel: "ChatroomChannel" })
console.log('Helllllooo from chatroot_channel');

consumer.subscriptions.create("ChatroomChannel", {
   connected() {
     // Called when the subscription is ready for use on the server
     submit_message();
     
   },

   disconnected() {
     // Called when the subscription has been terminated by the server
   },

   received(data) {
     $('#message-container').append(data.full_message);
     // alert(data.foo);
     // Called when there's incoming data on the websocket for this channel
     // $('#body').val('');
     //import scroll_bottom from '../application';
    
     scroll_bottom();
   }
 });
