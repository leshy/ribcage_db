// Generated by CoffeeScript 1.8.0
(function() {
  var backbone, collections, mongodb;

  backbone = require('backbone4000');

  mongodb = require('mongodb');

  collections = require('collections/serverside');

  exports.lego = backbone.Model.extend4000({
    requires: 'logger',
    init: function(callback) {
      this.env.db = new mongodb.Db(this.settings.name, new mongodb.Server(this.settings.host || 'localhost', this.settings.port || 27017), {
        safe: true
      });
      return this.env.db.open((function(_this) {
        return function() {
          _this.env.log('init db', {}, 'init', 'ok');
          return callback(void 0, 'mongodb://' + _this.env.db.serverConfig.host + ":" + _this.env.db.serverConfig.port);
        };
      })(this));
    }
  });

}).call(this);
