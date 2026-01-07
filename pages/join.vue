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
              <input
                v-model="formData.name"
                type="text"
                class="w-full border-b-2 border-gray-400 pb-1 bg-transparent focus:outline-none focus:border-sea-600 text-gray-900"
                :placeholder="$t('join.form.name')"
              />
            </div>

            <div>
              <label class="block text-sm font-semibold text-gray-700 mb-2">
                {{ $t('join.form.birthDate') }}
              </label>
              <input
                v-model="formData.birthDate"
                type="text"
                class="w-full border-b-2 border-gray-400 pb-1 bg-transparent focus:outline-none focus:border-sea-600 text-gray-900"
                :placeholder="$t('join.form.birthDate')"
              />
            </div>

            <div>
              <label class="block text-sm font-semibold text-gray-700 mb-2">
                {{ $t('join.form.field') }}
              </label>
              <input
                v-model="formData.field"
                type="text"
                class="w-full border-b-2 border-gray-400 pb-1 bg-transparent focus:outline-none focus:border-sea-600 text-gray-900"
                :placeholder="$t('join.form.field')"
              />
            </div>

            <div>
              <label class="block text-sm font-semibold text-gray-700 mb-2">
                {{ $t('join.form.hobbies') }}
              </label>
              <input
                v-model="formData.hobbies"
                type="text"
                class="w-full border-b-2 border-gray-400 pb-1 bg-transparent focus:outline-none focus:border-sea-600 text-gray-900"
                :placeholder="$t('join.form.hobbies')"
              />
            </div>

            <div>
              <label class="block text-sm font-semibold text-gray-700 mb-2">
                {{ $t('join.form.contacts') }}
              </label>
              <div class="flex gap-4 mb-2 items-center">
                <span class="text-sm text-gray-600 whitespace-nowrap">{{ $t('join.form.tel') }}</span>
                <input
                  v-model="formData.tel"
                  type="tel"
                  class="flex-1 border-b-2 border-gray-400 pb-1 bg-transparent focus:outline-none focus:border-sea-600 text-gray-900"
                  :placeholder="$t('join.form.tel')"
                />
              </div>
              <div class="flex gap-4 items-center">
                <span class="text-sm text-gray-600 whitespace-nowrap">{{ $t('join.form.email') }}</span>
                <input
                  v-model="formData.email"
                  type="email"
                  class="flex-1 border-b-2 border-gray-400 pb-1 bg-transparent focus:outline-none focus:border-sea-600 text-gray-900"
                  :placeholder="$t('join.form.email')"
                />
              </div>
            </div>

            <div class="mt-8">
              <label class="flex items-start gap-2 cursor-pointer">
                <input
                  v-model="formData.charterAccepted"
                  type="checkbox"
                  class="mt-1 w-4 h-4 text-sea-600 border-gray-300 rounded focus:ring-sea-500"
                />
                <p class="text-sm text-gray-700">
                  {{ $t('join.form.charter') }}
                </p>
              </label>
            </div>

            <div class="flex gap-8 mt-12">
              <div class="flex-1">
                <input
                  v-model="formData.signature"
                  type="text"
                  class="w-full border-b-2 border-gray-400 pb-1 bg-transparent focus:outline-none focus:border-sea-600 text-gray-900 min-h-[3rem] mb-2"
                  :placeholder="$t('join.form.signature')"
                />
                <p class="text-sm text-gray-600">{{ $t('join.form.signature') }}</p>
              </div>
              <div class="flex-1">
                <input
                  v-model="formData.date"
                  type="text"
                  class="w-full border-b-2 border-gray-400 pb-1 bg-transparent focus:outline-none focus:border-sea-600 text-gray-900 min-h-[3rem] mb-2"
                  :placeholder="$t('join.form.date')"
                />
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

const formData = ref({
  name: '',
  birthDate: '',
  field: '',
  hobbies: '',
  tel: '',
  email: '',
  charterAccepted: false,
  signature: '',
  date: ''
})

const printForm = () => {
  const formElement = document.getElementById('membership-form')
  if (!formElement) return

  const printWindow = window.open('', '_blank')
  if (!printWindow) return

  // Get current date if not filled
  const currentDate = formData.value.date || new Date().toLocaleDateString()

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
          .form-field {
            margin-bottom: 20px;
          }
          .form-value {
            border-bottom: 2px solid #000;
            min-height: 30px;
            padding-bottom: 5px;
            margin-bottom: 15px;
            font-size: 14px;
          }
          .form-label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
            font-size: 12px;
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
            padding-bottom: 5px;
            margin-bottom: 5px;
            font-size: 14px;
          }
          @media print {
            button {
              display: none;
            }
          }
        </style>
      </head>
      <body>
        <div style="padding: 40px; max-width: 800px; margin: 0 auto; font-family: Arial, sans-serif;">
          <!-- Organization Info -->
          <div style="margin-bottom: 30px; font-size: 12px; color: #333;">
            <p style="font-weight: bold; margin-bottom: 5px;">${t('join.orgInfo.name')}</p>
            <p>${t('join.orgInfo.address')}</p>
            <p>${t('join.orgInfo.bank')}</p>
            <p>${t('join.orgInfo.contacts')}</p>
          </div>

          <div style="margin-bottom: 30px;">
            <h2 style="font-size: 24px; font-weight: bold; color: #0c4a6e; margin-bottom: 10px;">
              ${t('join.title')}
            </h2>
            <p style="font-size: 16px; color: #333; margin-bottom: 20px;">
              ${t('join.subtitle')}
            </p>
          </div>

          <!-- Form Fields with Values -->
          <div style="margin-bottom: 20px;">
            <label class="form-label">${t('join.form.name')}</label>
            <div class="form-value">${formData.value.name || '&nbsp;'}</div>
          </div>

          <div style="margin-bottom: 20px;">
            <label class="form-label">${t('join.form.birthDate')}</label>
            <div class="form-value">${formData.value.birthDate || '&nbsp;'}</div>
          </div>

          <div style="margin-bottom: 20px;">
            <label class="form-label">${t('join.form.field')}</label>
            <div class="form-value">${formData.value.field || '&nbsp;'}</div>
          </div>

          <div style="margin-bottom: 20px;">
            <label class="form-label">${t('join.form.hobbies')}</label>
            <div class="form-value">${formData.value.hobbies || '&nbsp;'}</div>
          </div>

          <div style="margin-bottom: 20px;">
            <label class="form-label">${t('join.form.contacts')}</label>
            <div style="margin-bottom: 10px;">
              <span style="font-size: 12px; color: #666;">${t('join.form.tel')}</span>
              <div class="form-value" style="margin-left: 10px; display: inline-block; width: calc(100% - 80px);">${formData.value.tel || '&nbsp;'}</div>
            </div>
            <div>
              <span style="font-size: 12px; color: #666;">${t('join.form.email')}</span>
              <div class="form-value" style="margin-left: 10px; display: inline-block; width: calc(100% - 80px);">${formData.value.email || '&nbsp;'}</div>
            </div>
          </div>

          <div style="margin-top: 30px; margin-bottom: 20px;">
            <p style="font-size: 12px; color: #333;">
              ${t('join.form.charter')}
            </p>
            ${formData.value.charterAccepted ? '<p style="font-size: 12px; color: #333; margin-top: 5px;">✓ ' + t('join.form.charter') + '</p>' : ''}
          </div>

          <div class="signature-section">
            <div class="signature-box">
              <div class="signature-line">${formData.value.signature || '&nbsp;'}</div>
              <p style="font-size: 12px; color: #666;">${t('join.form.signature')}</p>
            </div>
            <div class="signature-box">
              <div class="signature-line">${currentDate}</div>
              <p style="font-size: 12px; color: #666;">${t('join.form.date')}</p>
            </div>
          </div>
        </div>
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

