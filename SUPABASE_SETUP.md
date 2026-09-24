# SUPABASE_SETUP.md — FOCUS ARCHITECTURE OS

## Turnkey Database Setup Guide

1. Run `supabase/schema.sql` in your Supabase SQL editor.
2. Run `supabase/seed.sql` to populate sample tasks and habit data.
3. Configure `.env.local`:
```env
VITE_SUPABASE_URL=https://your-project.supabase.co
VITE_SUPABASE_ANON_KEY=eyJhbGciOi...
```

### 🔑 Demo Passkey
- **Passkey**: `focus2026`
- **Route**: `/admin` (or click `[ EXECUTIVE PASS ]` in header)
