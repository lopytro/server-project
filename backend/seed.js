import 'dotenv/config';import {init} from './src/store.js';await init();console.log('Данные инициализированы; существующие записи сохранены.');process.exit(0);
