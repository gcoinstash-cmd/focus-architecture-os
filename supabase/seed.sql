-- ==============================================================================
-- FOCUS ARCHITECTURE OS — PRODUCTION SEED DATA
-- ==============================================================================

insert into public.tasks (title, status, energy, horizon, completed, parent_workspace_id, notes) values
('Complete design guidelines & brand layout lookbook', 'IN_PROGRESS', 'HIGH_CHARGE', 'NOW', false, 'deep', 'Executive focus block 1'),
('Review quarterly client architecture feedback stream', 'NEXT_UP', 'LOW_BATTERY', 'NEXT', false, 'executive', 'Brief review'),
('Ship finalized spatial floorplan layout vectors', 'COMPLETE', 'HIGH_CHARGE', 'NOW', true, 'deep', 'Delivered via client portal');

insert into public.inbox_items (content, processed) values
('Research concrete textures for Nordic atelier project', false),
('Verify contrast ratios on secondary headline typography', false);

insert into public.habits (title, category, time_of_day, completed_days) values
('Morning visual baseline & typography curation', 'Ritual', 'Morning', '{"2026-09-24": true}'::jsonb),
('Evening offline vault markdown synchronization', 'Review', 'Evening', '{}'::jsonb);
