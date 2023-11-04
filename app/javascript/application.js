// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"

import "popper"
import "bootstrap"

console.log("Hello world from application_js!!!");

import "./channels"




export function scroll_bottom(){
    if ($('#messages').length > 0){
        $('#messages').scrollTop($('#messages')[0].scrollHeight);
    }
}

export function submit_message(){
    $('#body').on('keydown', function(e){

        var keycode = (e.keyCode ? e.keyCode : e.which);
        if(keycode == 13 ){
            console.log("ll")
           // $('#new_message form').submit();
            //console.log('clicked');
            //$('button[name="button"]').click();
            //e.target.value = "";
            //return false;  

        }
    });

    const input = document.querySelector("input");
    const log = document.getElementById("values");
    
    input.addEventListener("input", updateValue);
    
    function updateValue(e) {
      //log.textContent = e.target.value;
      console.log("event_listener");
      //console.log(e.target.value);
    }

    $('button[name="button"]').on('click', function(e){         
        console.log('clicked2');
        //$('#form_submit form').submit();
        //$('button[name="button"]').click();
        //e.target.value = "";
        //e.inputTarget.value = "";
        //e.target.click();
            //return false;  

    });
}

$(document).ready(function() {
    
    scroll_bottom();
  
});
