<?php

use Codebird\Codebird;

require "vendor/autoload.php";
require_once "config.php";
// require_once 'twitterModel.php';
// require_once 'formatTweet.php';

$cb = new Codebird;
$cb->setConsumerKey($twitterConfig['ConsumerKey'], $twitterConfig['ConsumerSecret'] );
$cb->setToken($twitterConfig['AccessToken'], $twitterConfig['AccessTokenSecret'] );

$cb->setReturnFormat(CODEBIRD_RETURNFORMAT_ARRAY);

$mentions = $cb->statuses_mentionsTimeline();

if (isset($mentions)){
  foreach($mentions as $mention){
    echo $mention['text'].'<br>';
  }
}

die;


// echo "<pre>";
// print_r($mentions);
// echo "</pre>";
