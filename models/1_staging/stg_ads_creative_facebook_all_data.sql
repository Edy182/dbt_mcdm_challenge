with src_ads_creative_facebook_all_data as (
  select * from {{ source('mcdm_paid_ads_basic_performance_facebook_gbq','src_ads_creative_facebook_all_data') }}
),

stg_ads_creative_facebook_all_data as (

select
    __insert_date           as insert_date,
    ad_id                   as ad_id,
    add_to_cart             as add_to_cart,
    adset_id                as adset_id,
    campaign_id             as campaign_id,
    channel                 as channel,
    clicks                  as clicks,
    comments                as comments,
    creative_id             as creative_id,
    creative_title          as creative_title,
    objective               as objective,
    buying_type             as buying_type,
    campaign_type           as campaign_type,
    creative_body           as creative_body,  
    date                    as date,
    likes                   as likes,
    shares                  as shares,
    comments_2              as comments_2,
    views                   as views,
    clicks_2                as clicks_2, 
    impressions             as impressions,
    mobile_app_install      as mobile_app_install,
    inline_link_clicks      as inline_link_clicks,
    purchase                as purchase,
    complete_registration   as complete_registration,
    purchase_value          as purchase_value,
    shares_2                as shares_2,
    spend                   as spend,
    purchase_2              as purchase_2,
    views_2                 as views_2

  from src_ads_creative_facebook_all_data
)
select * 
from stg_ads_creative_facebook_all_data