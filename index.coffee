backbone = require 'backbone4000'
mongodb = require 'mongodb'
collections = require 'collections/serverside'

exports.plugin = backbone.Model.extend4000
    requires: 'logger'
    init: (callback) ->
        @env.db = new mongodb.Db env.settings.db.name, new mongodb.Server(@settings.host, @settings.port), safe: true

        @env.db.open ->
            callback undefined, 'mongodb://' + @env.db.serverConfig.host + ":" + @env.db.serverConfig.port

