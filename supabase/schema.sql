-- ==============================================================================
-- FOCUS ARCHITECTURE OS — SUPABASE RELATIONAL SCHEMA
-- Executive Task, Deep Focus Chamber & Habit Architecture Operating System
-- ==============================================================================

create extension if not exists "uuid-ossp";

-- 1. EXECUTIVE TASKS
create table if not exists public.tasks (
    id uuid primary key default gen_random_uuid(),
    title text not null,
    status text not null default 'NEXT_UP',
    energy text not null default 'LOW_BATTERY',
    horizon text not null default 'NOW',
    completed boolean not null default false,
    paralyzed boolean not null default false,
    parent_workspace_id text not null default 'deep',
    notes text,
    created_at timestamp with time zone default timezone('utc'::text, now()) not null
);

-- 2. OPEN LOOPS INBOX
create table if not exists public.inbox_items (
    id uuid primary key default gen_random_uuid(),
    content text not null,
    processed boolean not null default false,
    created_at timestamp with time zone default timezone('utc'::text, now()) not null
);

-- 3. HABIT CALIBRATION
create table if not exists public.habits (
    id uuid primary key default gen_random_uuid(),
    title text not null,
    category text not null default 'Ritual',
    time_of_day text not null default 'Morning',
    completed_days jsonb not null default '{}'::jsonb,
    created_at timestamp with time zone default timezone('utc'::text, now()) not null
);

-- RLS
alter table public.tasks enable row level security;
alter table public.inbox_items enable row level security;
alter table public.habits enable row level security;

create policy "Public tasks read/write" on public.tasks for all using (true);
create policy "Public inbox read/write" on public.inbox_items for all using (true);
create policy "Public habits read/write" on public.habits for all using (true);
