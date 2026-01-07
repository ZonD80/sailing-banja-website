<template>
  <div class="section-padding bg-white">
      <div class="container-custom">
        <h1 class="text-4xl font-bold text-sea-800 mb-2">
          🔥 {{ $t('tariffs.title') }}
        </h1>
        <p class="text-xl text-sea-600 mb-8">
          💶 {{ $t('tariffs.subtitle') }}
        </p>

        <div class="overflow-x-auto">
          <table class="w-full border-collapse bg-white shadow-lg rounded-lg overflow-hidden">
            <thead class="bg-sea-600 text-white">
              <tr>
                <th class="px-6 py-4 text-left font-semibold">{{ $t('tariffs.service') }}</th>
                <th class="px-6 py-4 text-left font-semibold">{{ $t('tariffs.members') }}</th>
                <th class="px-6 py-4 text-left font-semibold">{{ $t('tariffs.guests') }}</th>
              </tr>
            </thead>
            <tbody class="divide-y divide-gray-200">
              <tr class="hover:bg-sea-50">
                <td class="px-6 py-4">{{ $t('tariffs.services.changingRoom') }}</td>
                <td class="px-6 py-4">{{ $t('tariffs.prices.free') }}</td>
                <td class="px-6 py-4">1 €</td>
              </tr>
              <tr class="hover:bg-sea-50">
                <td class="px-6 py-4">{{ $t('tariffs.services.toilet') }}</td>
                <td class="px-6 py-4">{{ $t('tariffs.prices.free') }}</td>
                <td class="px-6 py-4">1 €</td>
              </tr>
              <tr class="hover:bg-sea-50">
                <td class="px-6 py-4">{{ $t('tariffs.services.visit15min') }}</td>
                <td class="px-6 py-4">5 €</td>
                <td class="px-6 py-4">8 €</td>
              </tr>
              <tr class="hover:bg-sea-50">
                <td class="px-6 py-4">{{ $t('tariffs.services.visit1_5h') }}</td>
                <td class="px-6 py-4">8 €</td>
                <td class="px-6 py-4">10 €</td>
              </tr>
              <tr class="hover:bg-sea-50">
                <td class="px-6 py-4">{{ $t('tariffs.services.visit2h') }}</td>
                <td class="px-6 py-4">10 €</td>
                <td class="px-6 py-4">12 €</td>
              </tr>
              <tr class="hover:bg-sea-50">
                <td class="px-6 py-4">{{ $t('tariffs.services.visit2hPlus') }}</td>
                <td class="px-6 py-4">15 €</td>
                <td class="px-6 py-4">18 €</td>
              </tr>
              <tr class="hover:bg-sea-50">
                <td class="px-6 py-4">{{ $t('tariffs.services.ritual') }}</td>
                <td class="px-6 py-4">10 €</td>
                <td class="px-6 py-4">15 €</td>
              </tr>
              <tr class="hover:bg-sea-50">
                <td class="px-6 py-4">{{ $t('tariffs.services.groupWhisking') }}</td>
                <td class="px-6 py-4">20 €</td>
                <td class="px-6 py-4">20 €</td>
              </tr>
              <tr class="hover:bg-sea-50">
                <td class="px-6 py-4">
                  {{ $t('tariffs.services.individualWhisking') }}
                </td>
                <td class="px-6 py-4">50 €{{ $t('tariffs.prices.plusWhisks') }} (10 €)</td>
                <td class="px-6 py-4">50 €{{ $t('tariffs.prices.plusWhisks') }} (10 €)</td>
              </tr>
              <tr class="hover:bg-sea-50">
                <td class="px-6 py-4">{{ $t('tariffs.services.fourHands') }}</td>
                <td class="px-6 py-4">100 €{{ $t('tariffs.prices.plusWhisks') }} (20 €)</td>
                <td class="px-6 py-4">100 €{{ $t('tariffs.prices.plusWhisks') }} (20 €)</td>
              </tr>
              <tr class="hover:bg-sea-50">
                <td class="px-6 py-4">{{ $t('tariffs.services.booking') }}</td>
                <td class="px-6 py-4">100 €</td>
                <td class="px-6 py-4">100 €</td>
              </tr>
              <tr class="hover:bg-sea-50">
                <td class="px-6 py-4">{{ $t('tariffs.services.children') }}</td>
                <td class="px-6 py-4">{{ $t('tariffs.prices.freeWithFee') }}</td>
                <td class="px-6 py-4">—</td>
              </tr>
              <tr class="hover:bg-sea-50">
                <td class="px-6 py-4">{{ $t('tariffs.services.annualMember') }}</td>
                <td class="px-6 py-4">36 €</td>
                <td class="px-6 py-4">—</td>
              </tr>
              <tr class="hover:bg-sea-50">
                <td class="px-6 py-4">{{ $t('tariffs.services.annualNonMember') }}</td>
                <td class="px-6 py-4">—</td>
                <td class="px-6 py-4">50 €</td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
</template>

<script setup lang="ts">
useSeoMeta({
  title: 'Tariffs - Sailing Banja',
  description: 'Prices and conditions for visiting Sailing Banja'
})
</script>

