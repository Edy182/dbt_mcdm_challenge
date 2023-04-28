{{ config(materialized='table') }}

with stg_ads_twitter as (
  
  select 
     
    date,
    add_to_cart,
    clicks,
    comments,
    engagements,
    impressions,
    0 as installs,
    likes,
    0 as link_clicks,
    0 as post_click_conversions,
    0 as post_view_conversions,
    0 as posts,
    0 as purchase,
    0 as registrations,
    0 as  revenue,
    0 as shares,
    spend,
    0 as total_conversions,
    video_views,
    0 as ad_id,
    0 as adset_id,
    campaign_id,
    channel,
    0 as creative_id,
    placement_id
     
  from {{ref('stg_promoted_tweets_twitter_all_data')}}
)
select * from stg_ads_twitter