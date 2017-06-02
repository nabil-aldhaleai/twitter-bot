<?php

use Codebird\Codebird;

require "vendor/autoload.php";
require_once "config.php";


$cb = new Codebird;
$cb->setConsumerKey($twitterConfig['ConsumerKey'], $twitterConfig['ConsumerSecret'] );
$cb->setToken($twitterConfig['AccessToken'], $twitterConfig['AccessTokenSecret'] );
$cb->setReturnFormat(CODEBIRD_RETURNFORMAT_ARRAY);

$db = new PDO('mysql:host=127.0.0.1;dbname=888yongeandold','root', '');
$lastSinceId = $db->query("select * from mentions order by mention_id desc limit 1")->fetch(PDO::FETCH_OBJ);
$mentions = $cb->statuses_mentionsTimeline(isset($lastSinceId->mention_id) ? 'since_id='.$lastSinceId->mention_id :'');

if (isset($mentions)){
  foreach($mentions as $mention){
  if (isset($mention['text']) && !empty($mention['text'])){
  // if (isset($mention['id']) && $mention['id']=="870439097780903937"){
  // if (isset($mention['text']) ){
    // $str = trim(str_replace('@888yongeandold', '' ,$mention['text']));

    // echo $mention['id']."<br>";
    // echo $mention['user']['screen_name']."<br>";
    // echo $mention['text']."<br>";


  //     $str = trim(str_replace('@888yongeandold', '' ,$mention['text']));
  //     // $replace = array("1: When was the last time","2: played");
  //     // echo implode("<br>",substr_replace($replace,'',3,3));
  //     $str = trim(str_replace('When was the last time', '' ,$str));
  //     $str = trim(str_replace('played there?', '' ,$str));
  //
  //     // echo $str."<br>";
  //     $resutlt = keyWordsSearch('Tina Turner');
  //     // $resutlt = keyWordsSearch($str);
  //     if (count($result) > 0){
  //       echo "<pre>";
  //       print_r($result);
  //       echo "</pre>";
  //     }

    $cb->statuses_update([
      'status'=> '@'. $mention['user']['screen_name'].' '."This is an automated response.",
      'in_reply_to_status_id' => $mention['id']
    ]);

    $query = $db->prepare( 'INSERT INTO mentions (mention_id) VALUES (:mentionId)' );
    $query->execute(['mentionId' => $mention['id']]);


    }
  }

}


function keyWordsSearch($keyword){

  $mysqli = new mysqli("127.0.0.1", "root", "", "888yongeandold");
  if ($mysqli->connect_errno) {
      echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
  }

  $res = $mysqli->query("SELECT * from Concerts WHERE headliner LIKE '%$keyword' ORDER BY date DESC limit 1");
  $row = $res->fetch_assoc();
  
  return $row;

}
