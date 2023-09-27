# Pin npm packages by running ./bin/importmap

pin "application", preload: true
pin "@hotwired/turbo-rails", to: "turbo.min.js", preload: true
pin "@hotwired/stimulus", to: "stimulus.min.js", preload: true
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js", preload: true

pin "@rails/actioncable", to: "actioncable.esm.js"

#pin "jquery", to: "https://code.jquery.com/jquery-3.6.0.min.js", preload: true
#pin "semantic-ui", to: "https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.js", preload: true


pin_all_from "app/javascript/controllers", under: "controllers"

# pin popper & bootstrap libraries
pin "popper", to: 'popper.js', preload: true
pin "bootstrap", to: 'bootstrap.min.js', preload: true

#pin "jquery", to: "https://code.jquery.com/jquery-3.6.0.min.js", preload: true
#pin "semantic-ui", to: "https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.js", preload: true
#pin "semantic-ui", to: "semantic.min.js", preload: true

# pin popper & bootstrap libraries
# pin "jquery", to: 'jquery.min.js', preload: true
#pin "semantic-ui", to: 'semantic.min.js', preload: truepin "@rails/actioncable", to: "actioncable.esm.js"
pin_all_from "app/javascript/channels", under: "channels"

# pin "channels/chatroom_channel", to: 'chatroom_channel.js', preload: true
# pin "channels/consumer", to: 'consumer.js', preload: true
