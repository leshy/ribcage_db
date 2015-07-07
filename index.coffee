backbone = require 'backbone4000'
mongodb = require 'mongodb'
collections = require 'collections/serverside'
colors = require 'colors'

exports.lego = backbone.Model.extend4000
    after: 'logger'
    init: (callback) ->
        @env.db = new mongodb.Db @settings.name, new mongodb.Server(@settings.host or 'localhost', @settings.port or 27017), safe: true
        @env.db.open =>
            data = colors.green('mongodb://' + @env.db.serverConfig.host + ":" + @env.db.serverConfig.port)
            if @legos.logger
                @env.log "init db (#{data})", {}, 'init','ok'

            callback undefined, data
