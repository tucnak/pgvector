SELECT '[1,2,3]'::vector + '[4,5,6]';
SELECT '[1,2,3]'::vector - '[4,5,6]';

SELECT vector_dims('[1,2,3]');

SELECT round(vector_norm('[1,1]')::numeric, 5);
SELECT vector_norm('[3,4]');
SELECT vector_norm('[0,1]');

SELECT l2_distance('[0,0]', '[3,4]');
SELECT l2_distance('[0,0]', '[0,1]');
SELECT l2_distance('[1,2]', '[3]');

SELECT inner_product('[1,2]', '[3,4]');
SELECT inner_product('[1,2]', '[3]');

SELECT cosine_distance('[1,2]', '[2,4]');
SELECT cosine_distance('[1,2]', '[0,0]');
SELECT cosine_distance('[1,1]', '[1,1]');
SELECT cosine_distance('[1,1]', '[-1,-1]');
SELECT cosine_distance('[1,2]', '[3]');

SELECT avg(v) FROM unnest(ARRAY['[1,2,3]'::vector, '[3,5,7]']) v;
SELECT avg(v) FROM unnest(ARRAY['[1,2,3]'::vector, '[3,5,7]', NULL]) v;
SELECT avg(v) FROM unnest(ARRAY[]::vector[]) v;
SELECT avg(v) FROM unnest(ARRAY['[1,2]'::vector, '[3]']) v;
