const Sequelize = require('sequelize');

require('dotenv').config();

const sequelize = process.env.JAWSDB_URL
    ? new Sequelize(process.env.JAWSDB_URL)
    : new Sequelize('healthcare_db', 'anggarustico', 'Titipabsen99*', {
        host: '127.0.0.1',
        dialect: 'mysql',
        port: ''
    });

module.exports = sequelize;
