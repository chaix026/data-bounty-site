// @ts-check
import { defineConfig } from 'astro/config';
import tailwind from '@astrojs/tailwind';

// https://astro.build/config
export default defineConfig({
    site: 'https://chaix026.github.io',
    base: '/data-bounty-site',
    integrations: [tailwind()],
});
