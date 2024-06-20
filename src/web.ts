import { WebPlugin } from '@capacitor/core';

import type { CapacitorCloudkitAPIPlugin } from './definitions';

export class CapacitorCloudkitAPIWeb
  extends WebPlugin
  implements CapacitorCloudkitAPIPlugin
{
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
