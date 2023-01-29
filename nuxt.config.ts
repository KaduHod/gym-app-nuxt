// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
    vite: {
        server: {
            hmr: {
                 clientPort: 24600,
                 port: 24600
            }
        }  
    },
    postcss: {
        plugins: {
          tailwindcss: {},
          autoprefixer: {},
        },
      },
    css: [
        '~/assets/css/main.css',
    ]
})
