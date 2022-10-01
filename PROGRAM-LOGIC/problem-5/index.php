<?php

require "../db.php";

$sql = "DELETE d1 FROM field d1 INNER JOIN field d2
WHERE d1.recid > d2.recid AND d1.field1 = d2.field1 
AND d1.field2 = d2.field2 AND d1.field3 = d2.field3";

$results = mysqli_query($conn, $sql);

if ($results === false) {
    echo "<h1>Duplicate datas are not deleted</h1>";
} else {
    echo "<h1>Duplicate datas are deleted</h1>";
}





    














