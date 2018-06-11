CHAT-ROOM USING ACTIONCABLE AND DEVISE

1. Add these gems and bundle install:
[...]
gem 'devise'
gem 'bootstrap', '~> 4.0.0.alpha3'
[...]

2. Add "@import "bootstrap";" to main css page

3. Configure Devise (I'm not sure if you need to do this since you've already installed Devise):
$ rails generate devise:install
$ rails generate devise User
$ rails generate devise:views
$ rails db:migrate

4. Restrict access to site pages to authenticated users (again, I think you may have done this):
 THIS FILE: application_controller.rb

5. Add support for chat rooms by generating this model:

$ rails g model ChatRoom title:string user:references
$ rails db:migrate
  - models/chat_room.rb
      [...]
      belongs_to :user
      [...]
  - models/users.rb
      [...]
      has_many :chat_rooms, dependent: :destroy
      [...]

7. Code controller to list and create chat rooms:
   THIS FILE: chat_rooms_controller.rb        

8. Generate views:
    THIS FILE: views/chat_rooms/index.html.erb
    THIS FILE: views/chat_rooms/_chat_room.html.erb
    THIS FILE: views/chat_rooms/new.html.erb

MESSAGES     
    - Should belong to user and a chat room:
        $ rails g model Message body:text user:references chat_room:references
        $ rails db:migrate

1. Establish proper relations:
    THIS FILE: model/chat_room.rb

    THIS FILE: models/users.rb

    THIS FILE: models/messages.rb


2. Create new show action*:
    THIS FILE: chat_rooms_controller.rb

3. Now the views:
    THIS FILE: views/chat_rooms/show.html.erb

    THIS FILE: views/messages/_message.html.erb

4. In this partial three new methods are employed: user.name, message.timestamp and gravatar_for:
    THIS FILE: models/user.rb

    THIS FILE: models/message.rb

  gravatar_for:
    THIS FILE: application_helper.rb
        AND
    THIS FILE: chatroom.css

5. Add routes:
    THIS FILE: config/routes.rb

6. Adding ActionCable:
  CLIENT SIDE
    - install Redis (you have already added this, but jic):
        gem 'redis', '~> 3.2'
    - modify yml file to use Redis as adatper:
        THIS FILE: config/cable.yml
    - modify routes.rb to mount ActionCable on some URL:
        THIS FILE: config/routs.rb
    - check that this file is present in the javascripts folder:
        THIS FILE: cable.js
    - create a new channel:
        THIS FILE: javascripts/channels/rooms.coffee
    - create form to allow users to send messages:
        THIS FILE: views/chat_rooms/show.html.erb
    - Add @message instance variable inside controller:
        THIS FILE: chat_rooms_controller.rb
    - Add basic message validations:
        THIS FILE: models/message.rb
    - Provide script with room's id:
        THIS FILE: views/chat_rooms/show.html.erb
    - Now use the room's id in the script:
        THIS FILE: javascripts/channels/rooms.coffee
    - Listen for form's submit event:
        THIS FILE: javascripts/channels/rooms.coffee
  CLIENT SIDE
    - Introduce a channel on server:
        THIS FILE: channels/chat_rooms_channel.rb
            (subscribed is a special method to start streaming from a channel with a given name. As long as we have multiple rooms, the channel’s name will vary. Remember, we provided chat_room_id: messages.data('chat-room-id') when subscribing to a channel in our script? Thanks to it, chat_room_id can be fetched inside the subscribed method by calling params['chat_room_id'].

            unsubscribed is a callback that fires when the streaming is stopped, but we won’t use it in this demo.

            The last method – send_message – fires when we run @perform 'send_message', message: message, chat_room_id: chat_room_id from our script. The data variable contains a hash of sent data, so, for example, to access the message you would type data['message'].)
    -  Modify the send_message method:
        THIS FILE: channels/chat_rooms_channel.rb
            Once we receive a message, save it to the database. You don’t even need to check whether the provided chat room exists – by default, in Rails 5, a record’s parent must exist in order to save it. This behavior can be changed by setting optional: true for the belongs_to relation (read about other changes in Rails 5 here).

            There is a problem though – Devise’s current_user method is not available for us here.
    - Modify connection.rb file to make current_user method available:
        THIS FILE: channels/application_cable/connection.rb
    - Add a callback that fires after the message is saved to db:
        THIS FILE: models/message.rb
    - Write the job:
        THIS FILE: jobs/message_broadcaset_job.rb
    - Broadcasting message data:
        THIS FILE: jobs/message_broadcaset_job.rb
    - Create empty controller for broadcast message:
        THIS FILE: messages_controller.rb

  BACK TO CLIENT SIDE
    - Finalize script:
        THIS FILE: javascripts/channels/rooms.coffee
    - Make chat sort messages like Slack (new messages at the bottom & scroll to new)
        THIS FILE: javascripts/channels/rooms.coffee

Pushing to Heroku
    - install Redis addon & tweak yml file to provide proper Redis URL:
        THIS FILE: config/cable.yml
    - Allow origins to subscribe to channels:
        THIS FILE: config/environments/production.rb
    - Lastly, provide the ActionCable URL (as long as our routes.rb has "mount ActionCable.server => '/cable'")
        THIS FILE: config/environments/production.rb






* note the includes method used for eager loading: http://api.rubyonrails.org/classes/ActiveRecord/QueryMethods.html#method-i-includes
