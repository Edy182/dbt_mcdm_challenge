with src_ads_bing_all_data as (
  select * from {{ source('mcdm_paid_ads_basic_performance_bing_gbq','src_ads_bing_all_data') }}
),

stg_ads_bing_all_data as (

select
    __insert_date              as insert_date,
    ad_id                      as ad_id,
    adset_id                   as adset_id,
    campaign_id                as campaign_id,
    channel                    as channel,
    ad_description             as ad_description,
    title_part_1               as title_part_1,
    title_part_2               as title_part_2,
    clicks                     as clicks,
    date                       as date,
    imps                       as impressions,
    revenue                    as revenue,
    spend                      as spend,
    conv                       as conversions

  from src_ads_bing_all_data
)
select * 
from stg_ads_bing_all_data