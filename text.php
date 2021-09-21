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
        $count = 10;
        //print_r($text_array);
        foreach($text_array as $word){
            if(strlen($word) >3){
                $sql = 'insert into wordlist_unique (word, hex) values ("' . $word . '", HEX(' . $count . '));';

                if ($conn->query($sql) === TRUE) {
                echo "New record created successfully";
                } else {
                    echo "Error: " . $conn->error;
                }
                echo '<br>';
                $count++;
            }
            
        }
        //print_r($hex_list);
        
        $conn->close();
    ?>