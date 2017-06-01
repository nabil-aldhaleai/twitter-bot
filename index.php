<?php

use Codebird\Codebird;

require "vendor/autoload.php";


$cb = new Codebird;

$cb->setConsumerKey('9rBfImzouVF8xtcCHI8PzaFCS','sCz49oRrMEiRkH9bmZnLyfcSKIIJRIRT96hUszQGfHcuuf1WAp');
$cb->setToken('870278599575822336-CRiLb10qDaibDCLdu9dOIhVtCPYkCMd', '4tJLA9kjZFVybHW3pL4Edrg4Z3vo0ldzPkSJL1W11JVsQ');


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

// display response
echo "<pre>";
print_r($reply);
echo "</pre>";
