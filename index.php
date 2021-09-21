<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        body{
            margin: 0 auto;
            width: 66%;
            font-family: 'Calibri';
        }
        table{
            width: 100%;
            border-collapse: collapse;
        }
        td, th{
            
            border: 1px solid black;
            padding: 10px;
            vertical-align: top;
        }
    </style>
</head>
<body>
    <h1>Hex Text Compression - Compress lengthy word into a hex value.</h1>
    
    <hr>
    <?php
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "tc";
        
        // Create connection
        $conn = new mysqli($servername, $username, $password, $dbname);
        // Check connection
        if ($conn->connect_error) {
          die("Connection failed: " . $conn->connect_error);
        }
        else{
            echo 'Database connected.';
        }
        
        $text = "The enormous room on the ground floor faced towards the north Cold for all the summer beyond the panes for all the tropical heat of the room itself a harsh thin light glared through the windows hungrily seeking some draped lay figure some pallid shape of academic goose-flesh but finding only the glass and nickel and bleakly shining porcelain of a laboratory Wintriness responded to wintriness The overalls of the workers were white their hands gloved with a pale corpse-coloured rubber The light was frozen dead a ghost Only from the yellow barrels of the microscopes did it borrow a certain rich and living substance lying along the polished tubes like butter streak after luscious streak in long recession down the work tables He pointed On a very slowly moving band a rack-full of test-tubes was entering a large metal box another rack-full was emerging Machinery faintly purred It took eight minutes for the tubes to go through he told them Eight minutes of hard X-rays being about as much as an egg can stand A few died; of the rest the least susceptible divided into two; most put out four buds; some eight; all were returned to the incubators where the buds began to develop; then after two days were suddenly chilled chilled and checked Two four eight the buds in their turn budded; and having budded were dosed almost to death with alcohol; consequently burgeoned again and having budded–bud out of bud out of bud–were thereafter–further arrest being generally fatal–left to develop in peace By which time the original egg was in a fair way to becoming anything from eight to ninety-six embryos– a prodigious improvement you will agree on nature Identical twins–but not in piddling twos and threes as in the old viviparous days when an egg would sometimes accidentally divide; actually by dozens by scores at a time In the Bottling Room all was harmonious bustle and ordered activity Flaps of fresh sow's peritoneum ready cut to the proper size came shooting up in little lifts from the Organ Store in the sub-basement Whizz and then click! the lift-hatches hew open; the bottle-liner had only to reach out a hand take the flap insert smooth-down and before the lined bottle had had time to travel out of reach along the endless band whizz click! another flap of peritoneum had shot up from the depths ready to be slipped into yet another bottle the next of that slow interminable procession on the band";
        $text_array = explode(' ', $text);
        $hex_list = array();
        $hex_string = '';
        //print_r($text_array);
        foreach($text_array as $word){
            $sql = "SELECT hex FROM wordlist_unique where word='$word'";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
            // output data of each row
            while($row = $result->fetch_assoc()) {
                array_push($hex_list, $row['hex']);
                $hex_string .= $row['hex'] . ' ';
            }
            } else {
                array_push($hex_list, $word);
                $hex_string .= $word . ' ';
            }
        }
        //print_r($hex_list);
        $sql = "select word, hex from wordlist_unique where length(word)> 7 order by hex limit 5";
        $sample = $conn->query($sql);
        
        $conn->close();
    ?>
    <hr>
    <h2>Dubious algoritm created to decrease the size of texts.</h2>
    <ul>
        <li>A copy of the compressed dictionary is needed in the client computer creates a dependency, otherwise jumbles of unreadable hex number will be displayed.</li>
        <li>If the size of the word is less than 3 and the hex index is higher than 3 it would increase the size instead, which is why this is best used for long words.</li>
        <li>(Theory) The dictionary should be sorted asc/desc? to attain maximum compression efficiency</li>
        <li>Doesn't support punctiation currently</li>
        <li>Can be somewhat viewed as partial 'cryptography' by differentiating dictionary, but probably easy to decode.</li>
        <li>This was created because of json problems, mine has a lot of text and I want to shorten them.</li>
    </ul>
    <table style="width:50%; margin: 0 auto;">
        <tr>
            <th style="width:50%">Original</th>
            <th style="width:50%">Compressed</th>
        </tr>
        <?php
            foreach($sample as $row){
                echo '<tr>
                        <td>' . $row['word'] . '</td>
                        <td>' . $row['hex'] . '</td>
                    </tr>';
            }
        ?>
    </table>
    
    <hr>
    <h1>The demo text is smaller by <?= round((strlen($hex_string)/strlen($text))*100, 2)  ?>%</h1>
    <table>
        <tr>
            <td>Comparison</td>
            <td>Original Text</td>
            <td>Compressed Text</td>
        </tr>
        <tr >
            <td>Word count</td>
            <td style="width:45%"><?= strlen($text) ?></td>
            <td style="width:45%"><?= strlen($hex_string) ?></td>
        </tr>
        <tr>
            <td>Text</td>
            <td><?= $text ?></td>
            <td><?= $hex_string ?></td>
        </tr>
    </table>
</body>
</html>