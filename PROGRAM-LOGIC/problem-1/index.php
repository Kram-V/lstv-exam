<?php

require "../db.php";

$sql = "SELECT * FROM salesfile1 WHERE cuscde = 'CUSTOMER 1' OR
cuscde = 'CUSTOMER 2' OR cuscde = 'CUSTOMER 3' ORDER BY cuscde;";

$results = mysqli_query($conn, $sql);

if ($results === false) {
    echo mysqli_error($conn);
} else {
    $reponse = mysqli_fetch_all($results, MYSQLI_ASSOC);


    // FOR CUSTOMER 1
    $customer_1 = array_filter($reponse, function($data){
        return $data["cuscde"] == "CUSTOMER 1";
    });

    $filtered_trnt_custom1 = [];

    foreach ($customer_1 as $custom1) {

        array_push($filtered_trnt_custom1, $custom1["trntot"]);
    }

    $sub_total_custom1 = array_reduce($filtered_trnt_custom1, function($prev, $curr){
        return $prev + $curr;
    });
    
    // FOR CUSTOMER 2
    $customer_2 = array_filter($reponse, function($data){
        return $data["cuscde"] == "CUSTOMER 2";
    });
    
    $filtered_trnt_custom2 = [];

    foreach ($customer_2 as $custom2) {

        array_push($filtered_trnt_custom2, $custom2["trntot"]);
    }

    $sub_total_custom2 = array_reduce($filtered_trnt_custom2, function($prev, $curr){
        return $prev + $curr;
    });

     // FOR CUSTOMER 3
    $customer_3 = array_filter($reponse, function($data){
        return $data["cuscde"] == "CUSTOMER 3";
    });

    $filtered_trnt_custom3 = [];

    foreach ($customer_3 as $custom3) {

        array_push($filtered_trnt_custom3, $custom3["trntot"]);
    }

    $sub_total_custom3 = array_reduce($filtered_trnt_custom3, function($prev, $curr){
        return $prev + $curr;
    });

}


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SALES</title>
    <link rel="stylesheet" href="./styles.css">
</head>

    <body>

       <h1 class="employee-header">Sales</h1>

        <div class="employee-list-container">   

            <table class="table">
                <tr>
                    <th>DATE</th>
                    <th>DOC NO.</th>
                    <th>AMOUNT</th>
                </tr>

                <tr>
                    <td><b>CUSTOMER 1</b></td>
                    <td></td>
                    <td></td>
                </tr>

           
                    <?php foreach ($customer_1 as $custom1): ?>
                        <tr>
                            <td><?= $custom1["trndte"] ?></td>
                            <td><?= $custom1["docnum"] ?></td>
                            <td class="trntot-text"><?= $custom1["trntot"] ?></td>
                        </tr>
                    <?php endforeach; ?>
               

                <tr>
                    <td><b>SUBTOTAL 1</b></td>
                    <td></td>
                    <td class="trntot-text"><?= $sub_total_custom1 ?></td>
                </tr>

                <tr>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                </tr>

                <tr>
                    <td><b>CUSTOMER 2</b></td>
                    <td></td>
                    <td></td>
                </tr>

                    <?php foreach ($customer_2 as $custom2): ?>
                        <tr>
                            <td><?= $custom2["trndte"] ?></td>
                            <td><?= $custom2["docnum"] ?></td>
                            <td class="trntot-text"><?= $custom2["trntot"] ?></td>
                        </tr>
                    <?php endforeach; ?>

                <tr>
                    <td><b>SUBTOTAL 2</b></td>
                    <td></td>
                    <td class="trntot-text"><?= $sub_total_custom2 ?></td>
                </tr>

                <tr>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                </tr>

                <tr>
                    <td><b>CUSTOMER 3</b></td>
                    <td></td>
                    <td></td>
                </tr>

                    <?php foreach ($customer_3 as $custom3): ?>
                        <tr>
                            <td><?= $custom3["trndte"] ?></td>
                            <td><?= $custom3["docnum"] ?></td>
                            <td class="trntot-text"><?= $custom3["trntot"] ?></td>
                        </tr>
                    <?php endforeach; ?>

                <tr>
                    <td><b>SUBTOTAL 3</b></td>
                    <td></td>
                    <td class="trntot-text"><?= $sub_total_custom3 ?></td>
                </tr>

                <tr>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                </tr>

                <tr>
                    <td><b>GRAND TOTAL</b></td>
                    <td></td>
                    <td class="trntot-text"><?= $sub_total_custom1 + $sub_total_custom2 + $sub_total_custom3 ?></td>
                </tr>
              

            </table>
        <!-- 
            <?php if (empty($employees)): ?>

                <p class="no-employees-text">No Employees Show</p>

            <?php endif; ?> -->
        </div>

    </body>
</html>


    
