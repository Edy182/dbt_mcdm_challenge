with src_promoted_tweets_twitter_all_data as (
  select * from {{ source('mcdm_paid_ads_basic_performance_twitter_gbq','src_promoted_tweets_twitter_all_data') }}
),

stg_promoted_tweets_twitter_all_data as (

select

    campaign_id       as campaign_id,
    channel           as channel,
    url               as url,
    text              as text,
    clicks            as clicks,
    comments          as comments,
    date              as date,
    engagements       as engagements,
    impressions       as impressions,
    likes             as likes,
    url_clicks        as url_clicks,
    retweets          as retweets,
    spend             as spend,
    video_total_views as video_views,
    0                 as add_to_cart,
    0                 as placement_id

  from src_promoted_tweets_twitter_all_data
)
select * 
from stg_promoted_tweets_twitter_all_data