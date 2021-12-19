# Virtual assistant program, made by knnav
# todo: make this less hacky an not a script

require_relative "app/models/conversation/conversation"
require_relative "config/config"

settings = Config.settings # this initializes configuration fot the app, maybe i should move this somewhere else...
banner = <<-'EOF'
    /\_____/\
   /  o   o  \
  ( ==  ^  == )
   )         (
  (           )
 ( (  )   (  ) )
(__(__)___(__)__)
EOF
puts banner
Conversation.start(settings)
