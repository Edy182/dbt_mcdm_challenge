with src_ads_tiktok_ads_all_data as (
  select * from {{ source('mcdm_paid_ads_basic_performance_tiktok_gbq','src_ads_tiktok_ads_all_data') }}
),

stg_ads_tiktok_ads_all_data as (

select
    __insert_date    as insert_date,
    ad_id            as ad_id,
    add_to_cart      as add_to_cart,
    adgroup_id       as adgroup_id,
    campaign_id      as campaign_id,
    channel          as channel,
    clicks           as clicks,
    date             as date,
    impressions      as impressions,
    rt_installs      as rt_installs,
    skan_app_install as skan_app_install,
    ad_status        as ad_status,
    ad_text          as ad_text,
    purchase         as purchase,
    registrations    as registrations,
    spend            as spend,
    conversions      as conversions,
    skan_conversion  as skan_conversion,
    video_views      as video_views,      
    0                as comments,
    0                as likes,
    0                as shares,
    null             as creative_id

  from src_ads_tiktok_ads_all_data
)
select * 
from stg_ads_tiktok_ads_all_data