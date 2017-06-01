<?php

function formatTweet($row){

  $TWEET_MAX_CHARS = 144;
  $SHORTENED_URL_CHARS = 27; # Twitter shortens all URLs in a tweet to this length
  $TODAY = new DateTime("now", new DateTimeZone('America/Toronto'));

  $interval = date_diff($TODAY, new DateTime($row['date'], new DateTimeZone('America/Toronto')));
  $years_ago = $interval->format('%y') + 1;
  if ($years_ago == 1) {
    $years_ago_text = "This month last year ";
  } else {
    $years_ago_text = "$years_ago years ago this month, ";
  }

  $tweet_start = $years_ago_text . $row['headliner'];
  $tweet_end = " played " . $row['venue_name'];
  $tweet = $tweet_start . $tweet_end;

  if ((strlen($tweet) < ($TWEET_MAX_CHARS - $SHORTENED_URL_CHARS - 1)) && ($row['link'])) {
    $tweet_end .= " " . $row['link'];
    $tweet = $tweet_start . $tweet_end;
  }

  if ($row['openers']) {
    $openers = " (with " . $row['openers'] . ")";
    if ((strlen($tweet) + strlen($openers)) < $TWEET_MAX_CHARS) {
      $tweet = $tweet_start . $openers . $tweet_end;
    }
  }

  return $tweet;

}
