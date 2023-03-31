    <!DOCTYPE html>
    <html lang="en">
    <head>
        <title>शब्द-खोज</title>
    </head>
    <body>
    <?php

    $host = "localhost";
    $databaseName = "Dictionary";
    $username = "root";
    $password = "root";

    $conn = "mysql:host=$host; dbname = $databaseName";
    $word = $_GET['search'];
    try {
        $dconn = new PDO("mysql:host=$host;dbname=$databaseName",$username,$password);
        $sql = $dconn->query("SELECT * FROM word where word = '$word'");
        foreach ($sql as $row) {
            $id = $row['wordID'];
            echo "<h1>". $row['word']."</h1>";
            echo "<b>". "Syllable : " .$row['syllable']. "</b>" ."<br>";
            echo "<b>". "Pronunciation : " .$row['pronounciation']. "</b>" ."<br>";
            if ($row['scientific_name']!=NULL) {
                echo "<b>". "Scientific Name : " .$row['scientific_name']. "</b>" ."<br>";
            }
            $sql = $dconn->query("SELECT pic_file from pic where pic.wordID = $id ");
            foreach ($sql as $row ) {
                
                echo '<img src="data:image/jpg;charset=utf8;base64,'.base64_encode($row['pic_file']).'"/>'."<br>";
            }
            echo "<hr>";
            $sql = $dconn->query("SELECT * from pos where pos.wordID = $id");
            foreach($sql as $row){
                $posid = $row['posID'];
            echo "<h3>". $row['part_of_speech'] ."</h3>";
            $sql = $dconn->query("SELECT * FROM meaning where meaning.posID = $posid");
            foreach ($sql as $row) {
                $meanID = $row['meanID'];
                echo $row['meaning'] . "<br>" ;
                $sql = $dconn->query("SELECT example from example where example.meanID = $meanID");
                foreach ($sql as $row ) {
                    echo "<b>". "Example - " . "</b>" .$row['example']. "<br>";
                }
                
                $sql = $dconn->query("SELECT synonym from synonym where synonym.meanID = $meanID");
                foreach ($sql as $row ) {
                    echo "<b>". "Synonyms -  ". "</b>". $row['synonym']. "<br>";
                }
                $sql = $dconn->query("SELECT antonym from antonym where antonym.meanID = $meanID");
                foreach ($sql as $row ) {
                    echo "<b>". "Antonyms -  ". "</b>". $row['antonym']. "<br><br>";
                }
            }
            }
            echo "<hr>";
                
                $sql = $dconn->query("SELECT Hindi, Sanskrit, Punjabi from language where language.wordID=$id");
                foreach ($sql as $row ) {
                    echo "<br>"."<b>". "Hindi  "."</b>". $row['Hindi']. "<br><br>";
                    echo "<b>". "Sanskrit  "."</b>". $row['Sanskrit']. "<br><br>";
                    echo "<b>". "Punjabi  "."</b>". $row['Punjabi']. "<br><br>";
                }
        }
        echo "<hr>";
    } catch ( PDOException $error) {
        echo "$error";
    }
    ?>    
    </body>
    </html>