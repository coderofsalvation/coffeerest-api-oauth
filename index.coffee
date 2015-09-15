Grant = require('grant-express')
   
module.exports = (server,model,lib, urlprefix) ->
  config = 
    server:
      'protocol': 'http'
      'host': model.host 
      'callback': '/oauth/callback'
      'transport': 'session'
      'state': true
  for name,provider in model.oauth
    config[name] = provider

  grant = new Grant config 
  # REQUIRED: (any session store - see ./example/express-session)
  server.use(session({secret:'grant'}))
  server.use(grant)
