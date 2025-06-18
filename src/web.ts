import { WebPlugin } from '@capacitor/core';

import type { InstallTimePlugin } from './definitions';

export class InstallTimeWeb extends WebPlugin implements InstallTimePlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
