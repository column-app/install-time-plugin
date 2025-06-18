export interface InstallTimePlugin {
  getInstallTime(): Promise<{ installTime: number }>;
}
