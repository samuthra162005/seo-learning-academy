# SEO Learning Academy

Interactive SEO & Generative AI Search curriculum platform with 3D animated mascots (**Tara** and **Dev**), research-grade study guides, diagnostic tables, 59 copy-ready AI prompts, 100 AI agent blueprints, and Multi-User / Multi-Admin / Multi-Center account management.

## Live Demo Accounts (Out of the Box)

- **Lead Admin**: `admin@seoacademy.com` / `admin123` (Chennai Main Center)
- **Center Instructor Admin**: `instructor@seoacademy.com` / `teach123` (Coimbatore Hub)
- **Student Account**: `alex@student.com` / `user123` (Online Cohort)
- **Admin Sign-Up Invite Code**: `ADMIN2026` (customizable inside Admin Studio)

## Deploy to GitHub Pages (`samuthra162005`)

Because this app uses relative paths (`assets/...`), zero build steps, and includes `.nojekyll`, it runs directly on GitHub Pages:

```bash
git init
git add .
git commit -m "Deploy SEO Learning Academy"
git branch -M main
git remote add origin https://github.com/samuthra162005/seo-learning-academy.git
git push -u origin main
```

Then open **Repository -> Settings -> Pages -> Deploy from a branch (`main` / `root`)**.
Your live site URL will be: `https://samuthra162005.github.io/seo-learning-academy/`

## Optional: Connect Shared Cloud Storage (Supabase)

By default, GitHub Pages runs in **Local Browser Storage Mode** (each user's device stores its own accounts & progress locally). To share accounts, centers, XP, and Admin topic edits across phones and laptops:

1. Create a free project at [supabase.com](https://supabase.com).
2. Open **SQL Editor** in Supabase and run [`supabase_schema.sql`](supabase_schema.sql).
3. Copy your **Project URL** and **Anon Public Key**.
4. Either paste them into `Admin Studio -> Backup & Cloud Sync` in the live UI, or set `CLOUD_CONFIG` near line 1123 in `index.html` before pushing to GitHub.
