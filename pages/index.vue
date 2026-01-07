<template>
  <div>
    <!-- Hero Section -->
    <section class="bg-gradient-to-b from-sea-50 to-white section-padding">
      <div class="container-custom">
        <div class="text-center max-w-4xl mx-auto">
          <h1 class="text-4xl md:text-5xl lg:text-6xl font-bold text-sea-800 mb-6">
            {{ $t('hero.title') }}
          </h1>
          <p class="text-xl md:text-2xl text-sea-600 mb-4">
            {{ $t('hero.subtitle') }}
          </p>
          <p class="text-lg text-gray-700 italic">
            {{ $t('hero.description') }}
          </p>
        </div>
      </div>
    </section>

    <!-- Location Map Section -->
    <section class="pt-2 pb-16 px-4 sm:px-6 lg:px-8 bg-white">
      <div class="container-custom">
        <div class="text-center max-w-2xl mx-auto">
          <h2 class="text-2xl md:text-3xl font-bold text-sea-800 mb-4">
            {{ $t('location.title') }}
          </h2>
          <p class="text-lg text-gray-700 mb-6">
            {{ $t('location.description') }}
          </p>
          <a href="https://maps.app.goo.gl/UaWgMadp5Mc9vAro7" target="_blank" rel="noopener noreferrer"
            class="inline-flex items-center gap-2 bg-sea-600 hover:bg-sea-700 text-white font-semibold py-3 px-6 rounded-lg transition-colors duration-200">
            <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z" />
              <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
                d="M15 11a3 3 0 11-6 0 3 3 0 016 0z" />
            </svg>
            {{ $t('location.viewOnMap') }}
          </a>
        </div>
      </div>
    </section>

    <!-- Advantages Section -->
    <section class="section-padding bg-sea-50">
      <div class="container-custom">
        <h2 class="text-3xl font-bold text-sea-800 text-center mb-12">
          {{ $t('advantages.title') }}
        </h2>

        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
          <!-- Location -->
          <div class="bg-white p-6 rounded-lg shadow-md">
            <div class="text-4xl mb-4">🌊</div>
            <h3 class="text-xl font-bold text-sea-700 mb-3">
              {{ $t('advantages.location.title') }}
            </h3>
            <p class="text-gray-600">
              {{ $t('advantages.location.description') }}
            </p>
          </div>

          <!-- Beach -->
          <div class="bg-white p-6 rounded-lg shadow-md">
            <div class="text-4xl mb-4">🏖️</div>
            <h3 class="text-xl font-bold text-sea-700 mb-3">
              {{ $t('advantages.beach.title') }}
            </h3>
            <p class="text-gray-600">
              {{ $t('advantages.beach.description') }}
            </p>
          </div>

          <!-- Longevity -->
          <div class="bg-white p-6 rounded-lg shadow-md">
            <div class="text-4xl mb-4">💚</div>
            <h3 class="text-xl font-bold text-sea-700 mb-3">
              {{ $t('advantages.longevity.title') }}
            </h3>
            <p class="text-gray-600">
              {{ $t('advantages.longevity.description') }}
            </p>
          </div>

          <!-- Sauna -->
          <div class="bg-white p-6 rounded-lg shadow-md">
            <div class="text-4xl mb-4">🔥</div>
            <h3 class="text-xl font-bold text-sea-700 mb-3">
              {{ $t('advantages.sauna.title') }}
            </h3>
            <p class="text-gray-600">
              {{ $t('advantages.sauna.description') }}
            </p>
          </div>

          <!-- SPA -->
          <div class="bg-white p-6 rounded-lg shadow-md">
            <div class="text-4xl mb-4">💧</div>
            <h3 class="text-xl font-bold text-sea-700 mb-3">
              {{ $t('advantages.spa.title') }}
            </h3>
            <p class="text-gray-600">
              {{ $t('advantages.spa.description') }}
            </p>
          </div>

          <!-- Warmth -->
          <div class="bg-white p-6 rounded-lg shadow-md">
            <div class="text-4xl mb-4">😊</div>
            <h3 class="text-xl font-bold text-sea-700 mb-3">
              {{ $t('advantages.warmth.title') }}
            </h3>
            <p class="text-gray-600">
              {{ $t('advantages.warmth.description') }}
            </p>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script setup lang="ts">
useSeoMeta({
  title: 'Sailing Banja - Парусная баня',
  description: 'Уникальная парусная баня на берегу Балтийского моря в Таллинне'
})
</script>
