import { registerPlugin } from '@capacitor/core';

import type { InstallTimePlugin } from './definitions';

const InstallTime = registerPlugin<InstallTimePlugin>('InstallTime', {
  web: () => import('./web').then((m) => new m.InstallTimeWeb()),
});

export * from './definitions';
export { InstallTime };
