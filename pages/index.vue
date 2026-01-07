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

