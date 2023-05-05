{{ config(materialized='table') }}

with stg_ads_facebook as (
  select

      ad_id,
      add_to_cart,
      adset_id,
      campaign_id,
      channel,
      clicks,
      comments,
      creative_id,
      date,
      likes + shares + comments + views + clicks as engagements,
      impressions,
      mobile_app_install as installs,
      likes,
      inline_link_clicks as link_clicks,
      '' as placement_id,
      0 as post_click_conversions,
      0 as post_view_conversions,
      0 as posts,
      purchase,
      complete_registration as registrations,
      purchase_value as revenue,
      shares,
      spend,
      purchase as total_conversions,
      views as video_views
     
  from {{ref('stg_ads_creative_facebook_all_data')}}
)
select * from stg_ads_facebook