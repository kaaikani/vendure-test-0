import { Request } from 'express';
import {
  AssetServerOptions,
  S3AssetStorageStrategy,
  S3Config,
} from '@vendure/asset-server-plugin';
import { RequestContext } from '@vendure/core';

export function configureCustomS3AssetStorage(s3Config: S3Config) {
  return (options: AssetServerOptions) => {
    const toAbsoluteUrlFn = (request: Request, identifier: string): string => {
      if (!identifier) return '';

      const isAdminRequest = request.originalUrl?.includes('/admin-api');

      const adminBase = `https://kaaikani.co.in/assets/`; // Your Vendure asset route
      const cdnBase = `https://cdn.kaaikani.co.in/`;

      const basePrefix = isAdminRequest ? adminBase : cdnBase;

      const baseUrl = identifier.startsWith(basePrefix)
        ? identifier
        : `${basePrefix}${identifier}`;

      // ✅ Set width/height/mode manually for admin
      const finalUrl = isAdminRequest
        ? `${baseUrl}?w=150&h=150&mode=crop`
        : baseUrl;

    //   console.log(`[Asset URL] ${request.originalUrl} -> ${finalUrl}`);
      return finalUrl;
    };

    return new S3AssetStorageStrategy(s3Config, toAbsoluteUrlFn);
  };
}
