-- Creación de CTEs por etapa del embudo de conversión
WITH first_visit AS (
  SELECT DISTINCT user_id
  FROM mercadolibre_funnel
  WHERE event_name = 'first_visit'
    AND event_date BETWEEN '2025-01-01' AND '2025-08-31'
),
select_item AS (
  SELECT DISTINCT user_id
  FROM mercadolibre_funnel
  WHERE event_name IN ('select_item', 'select_promotion')
    AND event_date BETWEEN '2025-01-01' AND '2025-08-31'
),
add_to_cart AS (
  SELECT DISTINCT user_id
  FROM mercadolibre_funnel
  WHERE event_name = 'add_to_cart'
    AND event_date BETWEEN '2025-01-01' AND '2025-08-31'
),
begin_checkout AS (
  SELECT DISTINCT user_id
  FROM mercadolibre_funnel
  WHERE event_name = 'begin_checkout'
    AND event_date BETWEEN '2025-01-01' AND '2025-08-31'
),
add_shipping_info AS (
  SELECT DISTINCT user_id
  FROM mercadolibre_funnel
  WHERE event_name = 'add_shipping_info'
    AND event_date BETWEEN '2025-01-01' AND '2025-08-31'
),
add_payment_info AS (
  SELECT DISTINCT user_id
  FROM mercadolibre_funnel
  WHERE event_name = 'add_payment_info'
    AND event_date BETWEEN '2025-01-01' AND '2025-08-31'
),
purchase AS (
  SELECT DISTINCT user_id
  FROM mercadolibre_funnel
  WHERE event_name = 'purchase'
    AND event_date BETWEEN '2025-01-01' AND '2025-08-31'
)
-- Cálculo final de tasas de conversión
SELECT 
  (SELECT COUNT(*) FROM select_item) * 100.0 / (SELECT COUNT(*) FROM first_visit) AS conversion_select_item,
  (SELECT COUNT(*) FROM add_to_cart) * 100.0 / (SELECT COUNT(*) FROM first_visit) AS conversion_add_to_cart,
  (SELECT COUNT(*) FROM begin_checkout) * 100.0 / (SELECT COUNT(*) FROM first_visit) AS conversion_begin_checkout,
  (SELECT COUNT(*) FROM add_shipping_info) * 100.0 / (SELECT COUNT(*) FROM first_visit) AS conversion_add_shipping_info,
  (SELECT COUNT(*) FROM add_payment_info) * 100.0 / (SELECT COUNT(*) FROM first_visit) AS conversion_add_payment_info,
  (SELECT COUNT(*) FROM purchase) * 100.0 / (SELECT COUNT(*) FROM first_visit) AS conversion_purchase;
