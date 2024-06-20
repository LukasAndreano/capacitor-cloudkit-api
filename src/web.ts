import { WebPlugin } from '@capacitor/core';

import type { CapacitorCloudkitAPIPlugin } from './definitions';

export class CapacitorCloudkitAPIWeb extends WebPlugin implements CapacitorCloudkitAPIPlugin {
  async saveKeyValue(options: { key: string, value: string }): Promise<{ key: string, value: string }> {
    console.warn('CapacitorCloudkitAPI is not implemented for web.');
    return { key: options.key, value: options.value };
  }

  async getKeyValue(options: { key: string }): Promise<{ key: string, value: string }> {
    console.warn('CapacitorCloudkitAPI is not implemented for web.');
    return { key: options.key, value: '' };
  }
}