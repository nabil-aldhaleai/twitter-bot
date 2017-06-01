<?php

use Codebird\Codebird;

require "vendor/autoload.php";
require_once "config.php";
require_once 'twitterModel.php';


$TWEET_MAX_CHARS = 144;
$SHORTENED_URL_CHARS = 27; # Twitter shortens all URLs in a tweet to this length

$cb = new Codebird;
$cb->setConsumerKey($twitterConfig['ConsumerKey'], $twitterConfig['ConsumerSecret'] );
$cb->setToken($twitterConfig['AccessToken'], $twitterConfig['AccessTokenSecret'] );


$tweet = getTweet();

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

/*
// these files to upload. You can also just upload 1 image!
$media_files = [
  'imgs/quad.jpg'
];
// will hold the uploaded IDs
$media_ids = [];

foreach ($media_files as $file) {
  // upload all media files
  $reply = $cb->media_upload([
    'media' => $file
  ]);
  // and collect their IDs
  $media_ids[] = $reply->media_id_string;
}

// convert media ids to string list
$media_ids = implode(',', $media_ids);

$reply = $cb->statuses_update([
	'status'=> 'My first quadcopter 888'.time(),
	'media_ids' => $media_ids
]);
*/

if ($row['image']) {
  $reply = $cb->media_upload(array(
    'media' => $row['image']
  ));
  $media_ids[] = $reply->media_id_string;

  $reply = $cb->statuses_update([
  	'status'=> $tweet,
  	'media_ids' => implode(',', $media_ids)
  ]);
} else {
  $reply = $cb->statuses_update([
  	'status'=> $tweet
  ]);
}

// display response
/*
echo "<pre>";
print_r($reply);
echo "</pre>";
*/
