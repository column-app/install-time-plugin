export interface InstallTimePlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
