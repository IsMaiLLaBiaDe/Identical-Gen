<?php



session_start();





?>
<div style="width: 980px;margin-bottom: 10px" id="results-container">
     <?php
	 
        // Database connection
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "identical-gen";

        $conn = new mysqli($servername, $username, $password, $dbname);

        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        // Search query
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            $searchTerm = $conn->real_escape_string($_POST["date"]);

            $sql = "SELECT * FROM samegen WHERE day LIKE '%$searchTerm%' OR month LIKE '%$searchTerm%' OR year LIKE '%$searchTerm%'";
            $result = $conn->query($sql);

            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    echo '<p><strong>' . $row["day"] . '</strong><br>' . $row["month"] . '<br>' . $row["year"] . '</p>';
                }
            } else {
                echo '<p>No results found.</p>';
            }
        }

        // Close the database connection
        $conn->close();
        ?>
    </div>
	</div></center>