<?php


  function getRecord(){

    $mysqli = new mysqli("127.0.0.1", "root", "", "888yongeandold");
    if ($mysqli->connect_errno) {
        echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
    }

    # pick a random event
    #$res = $mysqli->query("SELECT * FROM Concerts ORDER BY rand() LIMIT 1");

    # pick an event with a link
    #$res = $mysqli->query("SELECT * FROM Concerts WHERE link is not null ORDER BY rand() LIMIT 1");

    # pick an event with openers
    #$res = $mysqli->query("SELECT * FROM Concerts WHERE openers is not null ORDER BY rand() LIMIT 1");

    # pick an event with openers and a link
    #$res = $mysqli->query("SELECT * FROM Concerts WHERE openers is not null AND link is not null ORDER BY rand() LIMIT 1");

    # pick an event that happened this month
    $today = new DateTime("now", new DateTimeZone('America/Toronto'));
    $res = $mysqli->query("SELECT * FROM Concerts WHERE month(date) = " . $today->format('m') . " ORDER BY rand() LIMIT 1");

    # pick an event that has an image
    #$res = $mysqli->query("SELECT * FROM Concerts WHERE image is not null ORDER BY rand() LIMIT 1");

    $row = $res->fetch_assoc();

    return $row;
  }

?>
