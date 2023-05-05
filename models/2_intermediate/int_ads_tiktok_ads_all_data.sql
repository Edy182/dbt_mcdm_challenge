{{ config(materialized='table') }}

with stg_ads_tiktok as (
  select 
     
    ad_id,
    add_to_cart,
    adgroup_id as adset_id,
    campaign_id,
    channel,
    clicks,
    0 as comments,
    null as creative_id,
    date,
    0 as engagements,
    impressions,
    rt_installs + skan_app_install as installs,
    0 as likes,
    0 as link_clicks,
    '' as placement_id,
    0 as post_click_conversions,
    0 as post_view_conversions,
    0 as posts,
    purchase,
    registrations,
    0 as revenue,
    0 as shares,
    spend,
    conversions + skan_conversion as total_conversions,
    video_views
     
  from {{ref('stg_ads_tiktok_ads_all_data')}}
)
select * from stg_ads_tiktok