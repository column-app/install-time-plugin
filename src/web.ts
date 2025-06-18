import { WebPlugin } from '@capacitor/core';

import type { InstallTimePlugin } from './definitions';

export class InstallTimeWeb extends WebPlugin implements InstallTimePlugin {
  async getInstallTime(): Promise<{ installTime: number }> {
    return { installTime: Date.now() }; // fallback
  }
}
