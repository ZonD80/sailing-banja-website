<template>
  <div class="section-padding bg-white">
      <div class="container-custom max-w-4xl">
        <h1 class="text-4xl font-bold text-sea-800 mb-8">
          {{ $t('join.title') }}
        </h1>

        <div class="mb-6">
          <button
            @click="printForm"
            class="btn-primary"
          >
            🖨️ {{ $t('join.print') }}
          </button>
        </div>

        <div id="membership-form" class="bg-white p-8 border-2 border-sea-200 rounded-lg shadow-lg">
          <!-- Organization Info -->
          <div class="mb-8 text-sm text-gray-700">
            <p class="font-semibold mb-2">{{ $t('join.orgInfo.name') }}</p>
            <p>{{ $t('join.orgInfo.address') }}</p>
            <p>{{ $t('join.orgInfo.bank') }}</p>
            <p>{{ $t('join.orgInfo.contacts') }}</p>
          </div>

          <div class="mb-8">
            <h2 class="text-2xl font-bold text-sea-800 mb-4">
              {{ $t('join.title') }}
            </h2>
            <p class="text-lg text-gray-700 mb-6">
              {{ $t('join.subtitle') }}
            </p>
          </div>

          <!-- Form Fields -->
          <div class="space-y-6">
            <div>
              <label class="block text-sm font-semibold text-gray-700 mb-2">
                {{ $t('join.form.name') }}
              </label>
              <div class="border-b-2 border-gray-400 pb-1 min-h-[2rem]">
                &nbsp;
              </div>
            </div>

            <div>
              <label class="block text-sm font-semibold text-gray-700 mb-2">
                {{ $t('join.form.birthDate') }}
              </label>
              <div class="border-b-2 border-gray-400 pb-1 min-h-[2rem]">
                &nbsp;
              </div>
            </div>

            <div>
              <label class="block text-sm font-semibold text-gray-700 mb-2">
                {{ $t('join.form.field') }}
              </label>
              <div class="border-b-2 border-gray-400 pb-1 min-h-[2rem]">
                &nbsp;
              </div>
            </div>

            <div>
              <label class="block text-sm font-semibold text-gray-700 mb-2">
                {{ $t('join.form.hobbies') }}
              </label>
              <div class="border-b-2 border-gray-400 pb-1 min-h-[2rem]">
                &nbsp;
              </div>
            </div>

            <div>
              <label class="block text-sm font-semibold text-gray-700 mb-2">
                {{ $t('join.form.contacts') }}
              </label>
              <div class="flex gap-4 mb-2">
                <span class="text-sm text-gray-600">{{ $t('join.form.tel') }}</span>
                <div class="flex-1 border-b-2 border-gray-400 pb-1">
                  &nbsp;
                </div>
              </div>
              <div class="flex gap-4">
                <span class="text-sm text-gray-600">{{ $t('join.form.email') }}</span>
                <div class="flex-1 border-b-2 border-gray-400 pb-1">
                  &nbsp;
                </div>
              </div>
            </div>

            <div class="mt-8">
              <p class="text-sm text-gray-700 mb-4">
                {{ $t('join.form.charter') }}
              </p>
            </div>

            <div class="flex gap-8 mt-12">
              <div class="flex-1">
                <div class="border-b-2 border-gray-400 pb-1 min-h-[3rem] mb-2">
                  &nbsp;
                </div>
                <p class="text-sm text-gray-600">{{ $t('join.form.signature') }}</p>
              </div>
              <div class="flex-1">
                <div class="border-b-2 border-gray-400 pb-1 min-h-[3rem] mb-2">
                  &nbsp;
                </div>
                <p class="text-sm text-gray-600">{{ $t('join.form.date') }}</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
</template>

<script setup lang="ts">
const { t } = useI18n()

const printForm = () => {
  const formElement = document.getElementById('membership-form')
  if (!formElement) return

  const printWindow = window.open('', '_blank')
  if (!printWindow) return

  // Clone the form element and clean it up for printing
  const formClone = formElement.cloneNode(true) as HTMLElement
  
  // Remove any buttons from the cloned element
  const buttons = formClone.querySelectorAll('button')
  buttons.forEach(btn => btn.remove())

  printWindow.document.write(`
    <!DOCTYPE html>
    <html>
      <head>
        <title>${t('join.title')}</title>
        <style>
          body {
            font-family: Arial, sans-serif;
            padding: 40px;
            max-width: 800px;
            margin: 0 auto;
          }
          .form-section {
            margin-bottom: 30px;
          }
          .form-field {
            margin-bottom: 20px;
          }
          label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
          }
          .underline {
            border-bottom: 2px solid #000;
            min-height: 30px;
            margin-bottom: 15px;
          }
          .signature-section {
            display: flex;
            gap: 40px;
            margin-top: 40px;
          }
          .signature-box {
            flex: 1;
          }
          .signature-line {
            border-bottom: 2px solid #000;
            min-height: 50px;
            margin-bottom: 5px;
          }
          @media print {
            button {
              display: none;
            }
          }
        </style>
      </head>
      <body>
        ${formClone.innerHTML}
      </body>
    </html>
  `)

  printWindow.document.close()
  printWindow.focus()
  
  setTimeout(() => {
    printWindow.print()
  }, 250)
}

useSeoMeta({
  title: 'Join - Sailing Banja',
  description: 'Membership application form for Sailing Banja'
})
</script>

<style scoped>
@media print {
  #membership-form {
    border: none;
    box-shadow: none;
    padding: 0;
  }
  
  button {
    display: none;
  }
}
</style>

