# Sailing Banja - Парусная баня

A responsive landing page for Sailing Banja, a unique sailing sauna project by the Harmony Active Longevity Association, located on the Baltic Sea shore in Tallinn.

## Features

- 🌍 Multi-language support (Russian, English, Estonian) using i18next
- 📱 Fully responsive design with Tailwind CSS
- 🎨 Modern white and sea-themed design
- 📄 Tariffs page with pricing information
- 📝 Membership application form with print functionality
- ☁️ Optimized for Cloudflare Pages deployment

## Tech Stack

- **Nuxt 3** - Vue.js framework
- **Tailwind CSS** - Utility-first CSS framework
- **@nuxtjs/i18n** - Internationalization plugin
- **TypeScript** - Type safety

## Getting Started

### Prerequisites

- Node.js 18+ (use `.nvmrc` for version management)
- npm or yarn

### Local Development

1. Install dependencies:
```bash
npm install
```

2. Start the development server:
```bash
npm run dev
# or use the dev script
./dev.sh
```

The application will be available at `http://localhost:3000`

### Build for Production

```bash
npm run build
```

### Preview Production Build

```bash
npm run preview
```

## Deployment to Cloudflare Pages

### Option 1: Using Cloudflare Dashboard

1. Connect your Git repository to Cloudflare Pages
2. Set the following build settings:
   - **Build command**: `npm run build`
   - **Output directory**: `.output/public`
   - **Node version**: `18` or higher
   - **Root directory**: `/` (or leave empty)

### Option 2: Using Wrangler CLI

```bash
npm run build
npx wrangler pages deploy .output/public --project-name=sailing-banja
```

### Option 3: Using Deploy Script

```bash
./deploy.sh
```

## Project Structure

```
.
├── assets/          # CSS and static assets
├── layouts/         # Layout components
├── locales/         # i18n translation files
├── pages/           # Page components
│   ├── index.vue    # Home page
│   ├── tariffs.vue  # Tariffs page
│   └── join.vue     # Membership form page
├── dev.sh           # Local development script
├── deploy.sh        # Deployment script
└── nuxt.config.ts   # Nuxt configuration
```

## Language Support

The site supports three languages:
- **Russian** (ru) - Default
- **English** (en)
- **Estonian** (et)

Language switching is available in the header navigation.

## Customization

### Colors

The theme uses custom sea-themed colors defined in `tailwind.config.js`:
- `sea-*` - Sea blue color palette
- `sauna-*` - Sauna red color palette

### Translations

Edit translation files in the `locales/` directory:
- `locales/ru.json` - Russian translations
- `locales/en.json` - English translations
- `locales/et.json` - Estonian translations

## License

Private project for MTÜ Aktiivse Pikaealisuse Ühing «Harmony»

