import {Sequelize} from 'sequelize-typescript';
import {config} from './config/config';

// Print out the connection details
console.log(`Connecting to database with the following details:`);
console.log(`Host: ${config.host}`);
console.log(`Database: ${config.database}`);
console.log(`Username: ${config.username}`);


export const sequelize = new Sequelize({
  'username': config.username,
  'password': config.password,
  'database': config.database,
  'host': config.host,

  'dialect': config.dialect,
  'storage': ':memory:',
  dialectOptions: {
    ssl: {
      require: true, // This will help you. But you will see nwe error
      rejectUnauthorized: false // This line will fix new error
    }
  },
});
