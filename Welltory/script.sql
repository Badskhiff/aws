TRUNCATE cachetags;
TRUNCATE cache_bootstrap;
TRUNCATE cache_config;
TRUNCATE cache_container;
TRUNCATE cache_data;
TRUNCATE cache_default;
TRUNCATE cache_discovery;
TRUNCATE cache_dynamic_page_cache;
TRUNCATE cache_entity;
TRUNCATE cache_menu;
TRUNCATE cache_page;
TRUNCATE cache_render;
TRUNCATE cache_toolbar;
TRUNCATE queue;
TRUNCATE sessions;

UPDATE users_field_data SET pass = '1' WHERE uid > 0;

UPDATE users_field_data SET name = CONCAT('user', uid), mail = CONCAT('user', uid, '@example.org'), init = CONCAT('user', uid, '@example.org') WHERE uid NOT IN (0,1);
