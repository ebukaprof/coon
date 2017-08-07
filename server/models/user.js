var pg = require('pg');
module.exports = pg.model('user', {
  firstname: 'String',
  lastname: 'String'
});

/*module.exports = function(sequelize, DataTypes) {

    return sequelize.define("user", {
        name: DataTypes.STRING,
        description: DataTypes.TEXT,
    }, {
        schema: 'prefix',
        classMethods: {
            method1: function() {},
            method2: function() {}
        },
        instanceMethods: {
            method3: function() {}
        }
    }
}*/
