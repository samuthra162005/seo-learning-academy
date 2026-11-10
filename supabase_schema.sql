-- Optional Supabase Cloud Database Schema for Multi-Device GitHub Pages Sync
-- Paste this inside your Supabase Dashboard -> SQL Editor -> New Query -> Run

CREATE TABLE IF NOT EXISTS academy_state (
  id TEXT PRIMARY KEY,
  payload JSONB NOT NULL,
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

ALTER TABLE academy_state ENABLE ROW LEVEL SECURITY;

-- Note: For production deployment with strict per-user permissions,
-- replace this permissive demo policy with Supabase Auth RLS rules.
CREATE POLICY "Academy App Sync"
  ON academy_state
  FOR ALL
  USING (true)
  WITH CHECK (true);

