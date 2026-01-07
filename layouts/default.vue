<template>
  <div class="min-h-screen flex flex-col">
    <header class="bg-white shadow-md border-b-2 border-sea-200 sticky top-0 z-50">
      <nav class="container-custom py-2 md:py-4 px-3 sm:px-4 md:px-6 lg:px-8">
        <div class="flex items-center justify-between">
          <NuxtLink to="/"
            class="flex items-center gap-2 md:gap-3 text-lg md:text-2xl font-bold text-sea-700 hover:text-sea-800 transition-colors">
            <img src="/logo.jpg" alt="Harmony Logo" class="h-8 md:h-12 w-auto" />
            <span>Sailing Banja</span>
          </NuxtLink>

          <!-- Burger Menu Button (Mobile) -->
          <button @click="mobileMenuOpen = !mobileMenuOpen"
            class="md:hidden p-2 text-gray-700 hover:text-sea-600 transition-colors" aria-label="Toggle menu">
            <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path v-if="!mobileMenuOpen" stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                d="M4 6h16M4 12h16M4 18h16" />
              <path v-else stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12" />
            </svg>
          </button>

          <!-- Desktop Menu -->
          <div class="hidden md:flex items-center gap-4">
            <div class="flex items-center gap-4 md:gap-6">
              <NuxtLink to="/"
                class="text-gray-700 hover:text-sea-600 transition-colors font-medium py-1 border-b-2 border-transparent hover:border-sea-600">
                {{ $t('nav.home') }}
              </NuxtLink>
              <NuxtLink to="/tariffs"
                class="text-gray-700 hover:text-sea-600 transition-colors font-medium py-1 border-b-2 border-transparent hover:border-sea-600">
                {{ $t('nav.tariffs') }}
              </NuxtLink>
              <NuxtLink to="/join"
                class="text-gray-700 hover:text-sea-600 transition-colors font-medium py-1 border-b-2 border-transparent hover:border-sea-600">
                {{ $t('nav.join') }}
              </NuxtLink>
            </div>

            <div class="flex items-center gap-2 border-l-2 border-sea-200 pl-4">
              <button v-for="loc in allLocales" :key="loc.code" @click="switchLocale(loc.code)" :class="[
                'px-3 py-1.5 rounded-md text-sm transition-colors font-medium',
                currentLocale === loc.code
                  ? 'bg-sea-600 text-white shadow-md'
                  : 'bg-gray-100 text-gray-700 hover:bg-gray-200'
              ]">
                {{ loc.name }}
              </button>
            </div>
          </div>
        </div>

        <!-- Mobile Menu (Collapsible) -->
        <div v-show="mobileMenuOpen" class="md:hidden mt-3 pt-3 border-t border-sea-200">
          <div class="flex flex-col gap-3">
            <NuxtLink to="/" @click="mobileMenuOpen = false"
              class="text-gray-700 hover:text-sea-600 transition-colors font-medium py-2 px-2 rounded-md hover:bg-sea-50">
              {{ $t('nav.home') }}
            </NuxtLink>
            <NuxtLink to="/tariffs" @click="mobileMenuOpen = false"
              class="text-gray-700 hover:text-sea-600 transition-colors font-medium py-2 px-2 rounded-md hover:bg-sea-50">
              {{ $t('nav.tariffs') }}
            </NuxtLink>
            <NuxtLink to="/join" @click="mobileMenuOpen = false"
              class="text-gray-700 hover:text-sea-600 transition-colors font-medium py-2 px-2 rounded-md hover:bg-sea-50">
              {{ $t('nav.join') }}
            </NuxtLink>

            <div class="flex items-center gap-2 pt-2 border-t border-sea-200">
              <button v-for="loc in allLocales" :key="loc.code" @click="switchLocale(loc.code)" :class="[
                'px-2 py-1.5 rounded-md text-xs transition-colors font-medium',
                currentLocale === loc.code
                  ? 'bg-sea-600 text-white shadow-md'
                  : 'bg-gray-100 text-gray-700 hover:bg-gray-200'
              ]">
                {{ loc.name }}
              </button>
            </div>
          </div>
        </div>
      </nav>
    </header>

    <main class="flex-grow">
      <slot />
    </main>

    <footer class="bg-sea-50 border-t border-sea-100 mt-auto">
      <div class="container-custom section-padding py-8">
        <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
          <div>
            <h3 class="font-bold text-sea-800 mb-2">{{ $t('footer.org') }}</h3>
            <p class="text-sm text-gray-600">{{ $t('footer.regCode') }}</p>
          </div>
          <div>
            <p class="text-sm text-gray-600">{{ $t('footer.address') }}</p>
            <p class="text-sm text-gray-600 mt-2">{{ $t('footer.phone') }}</p>
            <p class="text-sm text-gray-600">{{ $t('footer.email') }}</p>
          </div>
          <div>
            <h3 class="font-bold text-sea-800 mb-2">{{ $t('social.title') }}</h3>
            <a href="https://www.facebook.com/harmony.active.longevity.association" target="_blank"
              rel="noopener noreferrer" class="text-sea-600 hover:text-sea-700 text-sm inline-flex items-center gap-2">
              <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24" aria-hidden="true">
                <path fill-rule="evenodd"
                  d="M22 12c0-5.523-4.477-10-10-10S2 6.477 2 12c0 4.991 3.657 9.128 8.438 9.878v-6.987h-2.54V12h2.54V9.797c0-2.506 1.492-3.89 3.777-3.89 1.094 0 2.238.195 2.238.195v2.46h-1.26c-1.243 0-1.63.771-1.63 1.562V12h2.773l-.443 2.89h-2.33v6.988C18.343 21.128 22 16.991 22 12z"
                  clip-rule="evenodd" />
              </svg>
              {{ $t('social.facebook') }}
            </a>
          </div>
        </div>
      </div>
    </footer>
  </div>
</template>

<script setup lang="ts">
const { locale, locales, setLocale } = useI18n()

const mobileMenuOpen = ref(false)

const allLocales = computed(() => {
  return locales.value as any[]
})

const currentLocale = computed(() => locale.value)

const switchLocale = async (code: string) => {
  await setLocale(code)
  // Save to localStorage for persistence
  if (process.client) {
    localStorage.setItem('i18n_locale', code)
  }
  // Close mobile menu after language switch
  mobileMenuOpen.value = false
}

// Load saved locale on mount, or detect browser language if no saved preference
onMounted(() => {
  if (process.client) {
    const savedLocale = localStorage.getItem('i18n_locale')
    if (savedLocale && ['ru', 'en', 'et'].includes(savedLocale)) {
      // Use saved preference
      if (savedLocale !== locale.value) {
        setLocale(savedLocale)
      }
    } else {
      // No saved preference - browser detection will handle it via cookie
      // But we can also check browser language directly
      const browserLang = navigator.language.split('-')[0]
      if (['ru', 'en', 'et'].includes(browserLang) && browserLang !== locale.value) {
        setLocale(browserLang)
        localStorage.setItem('i18n_locale', browserLang)
      }
    }
  }
})
</script>
