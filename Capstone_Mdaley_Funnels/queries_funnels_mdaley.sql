Quiz Funnel 1.1

SELECT *
FROM survey
LIMIT 10;

1.2

select question,
   count(distinct user_id)
from survey
group by question;


1.4

select *
from quiz
limit 5;

select *
from home_try_on
limit 5;

select *
from purchase
limit 5;

1.5

SELECT DISTINCT q.user_id,
   h.user_id IS NOT NULL AS 'is_home_try_on',
   h.number_of_pairs,
   p.user_id IS NOT NULL AS 'is_purchase'
FROM quiz q
LEFT JOIN home_try_on h
   ON q.user_id = h.user_id
LEFT JOIN purchase p
   ON p.user_id = q.user_id
LIMIT 10;
