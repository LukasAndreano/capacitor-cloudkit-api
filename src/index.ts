import { registerPlugin } from '@capacitor/core';

import type { CapacitorCloudkitAPIPlugin } from './definitions';

const CapacitorCloudkitAPI = registerPlugin<CapacitorCloudkitAPIPlugin>(
  'CapacitorCloudkitAPI',
  {
    web: () => import('./web').then(m => new m.CapacitorCloudkitAPIWeb()),
  },
);

export * from './definitions';
export { CapacitorCloudkitAPI };
