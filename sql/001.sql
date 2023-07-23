ALTER TABLE entry ADD COLUMN keyword_length TINYINT(255) UNSIGNED GENERATED ALWAYS AS (CHARACTER_LENGTH(keyword));
ALTER TABLE entry ADD INDEX keyword_length_index (keyword_length);