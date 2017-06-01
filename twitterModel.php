<?php


  function getTweet(){

    $TODAY = new DateTime("now", new DateTimeZone('America/Toronto'));

  
    $mysqli = new mysqli("127.0.0.1", "root", "", "888yongeandold");
    if ($mysqli->connect_errno) {
        echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
    }

    # pick a random event
    $res = $mysqli->query("SELECT * FROM Concerts ORDER BY rand() LIMIT 1");

    # pick an event with a link
    #$res = $mysqli->query("SELECT * FROM Concerts WHERE link is not null ORDER BY rand() LIMIT 1");

    # pick an event with openers
    #$res = $mysqli->query("SELECT * FROM Concerts WHERE openers is not null ORDER BY rand() LIMIT 1");

    # pick an event with openers and a link
    #$res = $mysqli->query("SELECT * FROM Concerts WHERE openers is not null AND link is not null ORDER BY rand() LIMIT 1");

    # pick an event that happened this month
    #$res = $mysqli->query("SELECT * FROM Concerts WHERE month(date) = " . $TODAY->format('m') . " ORDER BY rand() LIMIT 1");

    # pick an event that has an image
    $res = $mysqli->query("SELECT * FROM Concerts WHERE image is not null ORDER BY rand() LIMIT 1");

    $row = $res->fetch_assoc();

    $interval = date_diff($TODAY, new DateTime($row['date'], new DateTimeZone('America/Toronto')));
    $tweet_start = $interval->format('%y') . " years ago, " . $row['headliner'];
    $tweet_end = " played " . $row['venue_name'];
    $tweet = $tweet_start . $tweet_end;

    return $tweet;
  }
