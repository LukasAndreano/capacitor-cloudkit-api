export interface CapacitorCloudkitAPIPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
