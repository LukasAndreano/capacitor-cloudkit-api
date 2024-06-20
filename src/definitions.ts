export interface CapacitorCloudkitAPIPlugin {
  saveKeyValue(options: { key: string, value: string }): Promise<{ key: string, value: string }>;
  getKeyValue(options: { key: string }): Promise<{ key: string, value: string }>;
}