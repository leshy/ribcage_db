backbone = require 'backbone4000'
mongodb = require 'mongodb'
collections = require 'collections/serverside'

exports.lego = backbone.Model.extend4000
    requires: 'logger'
    init: (callback) ->
        @env.db = new mongodb.Db @settings.name, new mongodb.Server(@settings.host or 'localhost', @settings.port or 27017), safe: true

        @env.db.open =>
            @env.log 'init db', {}, 'init','ok'
            callback undefined, 'mongodb://' + @env.db.serverConfig.host + ":" + @env.db.serverConfig.port
            

