express = require 'express'
app = express()
app.use express.logger()

app.get '/', (req, resp) ->
  resp.send 'Hello, world!'

port = process.env.PORT || 5000
app.listen port, ->
  console.log "Listening on #{port}"
