// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"



import "popper"
import "bootstrap"

console.log("Hello world from application_js!!!");


// import "jquery" 
//import "semantic-ui"

//import "jquery" 
//import "semantic-ui"

// $(document).on('turbo:load', function() {
//     console.log('loaded turbo links')
//     $('.ui.dropdown').dropdown();
//      $('.ui.accordion').accordion();
//     //$('.ui.accordion').accordion('refresh');
// });

// $(document).on('turbo:load', function() {
//     console.log('loaded turbo links')
//     $('.ui.accordion').accordion()
// });

// $(document).ready(function(){
//     $('.ui.accordion').accordion()});

// $(document).on('turbolinks:load', function(){
//     $('.ui.dropdown').dropdown(); 
// })

//import consumer from "channels/consumer"

//import chatroom_channel from "channels/chatroom_channel"

//import './chatroom_channel'

// import channels from "./channels"

// import 'channels/chatroom_channel'
// import 'channels/consumer'




//import * as jq from './channels';

// Define a variable to check in inlined HTML script
//window.importmapScriptsLoaded = true;

import "./channels"
// import "channels/consumer"
// import "channels/chatroom_channel"
