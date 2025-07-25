import { bootstrap, Logger, runMigrations } from '@vendure/core';
import { config } from './vendure-config';
import { NestExpressApplication } from '@nestjs/platform-express';

runMigrations(config)
  .then(() => bootstrap(config))
  .then((app) => {
    const nestApp = app as NestExpressApplication;
    nestApp.set('trust proxy', 1);  

  })
  .catch((err) => {
    console.error(err);
  });
