# IdirPay.so - Instant Payment Links

Create instant payment links with QR codes for easy money transfers using Zaad, EVC, or Sahal.

## Features

- ⚡ **Instant Payment Links**: Generate unique payment links in seconds
- 📱 **QR Code Generation**: Automatic QR codes for easy scanning
- 💰 **3% Service Fee**: Transparent pricing with automatic calculation
- 🔒 **Secure & Private**: Phone numbers are optional for anonymous payments
- 📱 **PWA Ready**: Install as a mobile app
- 🌍 **Mobile Optimized**: Works perfectly on all devices including KaiOS phones
- ⏰ **7-Day Expiry**: Payment links automatically expire for security

## Tech Stack

- **Frontend**: Next.js 14+ (App Router) + TypeScript + Tailwind CSS
- **Backend**: Next.js API Routes (serverless)
- **Database**: SQLite with Better-SQLite3
- **QR Codes**: qr-code-styling library
- **PWA**: Next-PWA with service worker
- **Deployment**: Vercel-ready

## Color Scheme

- **Background**: #0F001A / #17002F (dark purple)
- **Cards**: #1E0039 (purple)
- **Accent**: #00FF88 (neon green)
- **Hover**: #39FF14 (bright green)
- **Text**: #FFFFFF (white)
- **Subtle Text**: #BBFFDD (light green)

## Quick Start

### 1. Install Dependencies

```bash
npm install
```

### 2. Run Development Server

```bash
npm run dev
```

Visit http://localhost:3000

### 3. Build for Production

```bash
npm run build
```

## One-Click Vercel Deploy

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https://github.com/yourusername/idirpay)

### Manual Vercel Deployment

1. Push code to GitHub/GitLab/Bitbucket
2. Import repository to Vercel
3. Deploy with default settings
4. Add environment variable:
   - `NEXT_PUBLIC_URL`: Your production URL (e.g., https://idirpay.so)

## Project Structure

```
├── app/
│   ├── api/create/route.ts    # API endpoint for creating payments
│   ├── [code]/page.tsx        # Public payment page
│   ├── layout.tsx             # Root layout
│   ├── page.tsx               # Home page (payment generator)
│   └── globals.css            # Global styles
├── components/                # Reusable components
│   ├── AmountInput.tsx
│   ├── CopyButton.tsx
│   ├── PhoneInput.tsx
│   ├── QRGenerator.tsx
│   └── WhatsAppButton.tsx
├── lib/
│   └── db.ts                  # Database utilities
├── public/
│   ├── manifest.json          # PWA manifest
│   ├── sw.js                  # Service worker
│   └── icons/                 # PWA icons
├── data/                      # SQLite database (created automatically)
└── package.json
```

## API Endpoints

### Create Payment
```
POST /api/create
Content-Type: application/json

{
  "amount": 100.00,
  "phone": "+252XXXXXXXXX" // optional
}
```

Response:
```json
{
  "code": "k9p4mx",
  "amount": 100.00,
  "total_amount": 103.00,
  "fee": 3.00,
  "phone": "+252XXXXXXXXX",
  "expires_at": "2025-12-18T12:00:00.000Z"
}
```

## How It Works

1. **Create**: User enters amount and optional phone number
2. **Generate**: System creates unique 6-character code
3. **Calculate**: 3% fee is added and rounded to nearest $0.05
4. **Display**: QR code and payment message are generated
5. **Share**: User shares the link or QR code with payer
6. **Pay**: Payer uses Zaad/EVC/Sahal with reference code
7. **Complete**: Money transfers instantly

## Payment Message Format

```
Pay $103.00 to +252XXXXXXXXX

Reference Code: K9P4MX

Pay via Zaad, EVC, or Sahal

https://idirpay.so/k9p4mx
```

## Mobile Optimization

- **KaiOS Support**: Works on $15 feature phones
- **Touch Friendly**: Large buttons and inputs
- **Fast Loading**: <1.5s on 3G networks
- **Offline Ready**: PWA with service worker
- **Responsive**: Perfect on all screen sizes

## Security Features

- **Unique Codes**: 6-character alphanumeric (62^6 combinations)
- **Expiration**: Links expire after 7 days
- **No Sensitive Data**: No payment credentials stored
- **HTTPS Only**: Secure connections only
- **Rate Limiting**: Built-in API protection

## Browser Support

- Chrome 90+
- Firefox 88+
- Safari 14+
- Edge 90+
- KaiOS Browser
- Samsung Internet

## Contributing

1. Fork the repository
2. Create feature branch
3. Commit changes
4. Push to branch
5. Create Pull Request

## License

MIT License - see LICENSE file for details

## Support

For issues and questions:
- Create an issue on GitHub
- Email: support@idirpay.so
- Telegram: @IdirPaySupport

---

Built with ❤️ for the Somali community