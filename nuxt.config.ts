// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  devtools: { enabled: true },
  ssr: false, // Client-side rendering for static hosting
  compatibilityDate: '2024-01-01',
  modules: [
    '@nuxtjs/tailwindcss',
    '@nuxtjs/i18n'
  ],
  i18n: {
    restructureDir: false,
    locales: [
      {
        code: 'ru',
        language: 'ru',
        name: 'Русский',
        file: 'ru.json'
      },
      {
        code: 'en',
        language: 'en',
        name: 'English',
        file: 'en.json'
      },
      {
        code: 'et',
        language: 'et',
        name: 'Eesti',
        file: 'et.json'
      }
    ],
    lazy: true,
    langDir: 'locales',
    defaultLocale: 'ru',
    strategy: 'no_prefix',
    detectBrowserLanguage: {
      useCookie: true,
      cookieKey: 'i18n_locale',
      redirectOn: 'root',
      alwaysRedirect: false
    },
    bundle: {
      optimizeTranslationDirective: false
    }
  },
  css: ['~/assets/css/main.css'],
  app: {
    head: {
      title: 'Sailing Banja - Парусная баня',
      meta: [
        { charset: 'utf-8' },
        { name: 'viewport', content: 'width=device-width, initial-scale=1' },
        { name: 'description', content: 'Sailing Banja - уникальная парусная баня на берегу Балтийского моря в Таллинне' }
      ],
      link: [
        { rel: 'icon', type: 'image/x-icon', href: '/favicon.ico' },
        { rel: 'icon', type: 'image/png', sizes: '32x32', href: '/favicon-32x32.png' },
        { rel: 'icon', type: 'image/png', sizes: '16x16', href: '/favicon-16x16.png' },
        { rel: 'apple-touch-icon', sizes: '180x180', href: '/apple-touch-icon.png' },
        { rel: 'manifest', href: '/site.webmanifest' }
      ]
    }
  }
})

