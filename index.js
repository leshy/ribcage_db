// Generated by CoffeeScript 1.8.0
(function() {
  var backbone, collections, mongodb;

  backbone = require('backbone4000');

  mongodb = require('mongodb');

  collections = require('collections/serverside');

  exports.plugin = backbone.Model.extend4000({
    requires: 'logger',
    init: function(callback) {
      this.env.db = new mongodb.Db(env.settings.db.name, new mongodb.Server(this.settings.host, this.settings.port), {
        safe: true
      });
      return this.env.db.open(function() {
        return callback(void 0, 'mongodb://' + this.env.db.serverConfig.host + ":" + this.env.db.serverConfig.port);
      });
    }
  });

}).call(this);
