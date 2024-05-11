<?php



session_start();


if (isset($_SESSION["user_id"])) {
    
    $mysqli = require __DIR__ . "/database.php";
    
    $sql = "SELECT * FROM users
            WHERE id = {$_SESSION["user_id"]}";
            
    $result = $mysqli->query($sql);
    
    $user = $result->fetch_assoc();
}




?>

  <!DOCTYPE html>
<html>
<meta char="UTF-8">
<link href="w3.css" rel="stylesheet"></link>
<head><title>Search</title></head>
<style>
.html,body{
	line-height: 1.5;
	height: 100%;
	width: 100%;
	overflow: hidden;
	margin: 0;
    padding: 0;
    box-sizing: border-box;
	    justify-content: center;
            align-items: center;
            min-height: 100vh;
	}
	.header{

  padding: 10px;
  text-align: center;
  background: #200;
  color: white;
  	height: 100%;
	width: 100%;
	
	}
	.events{
  flex: 70%;
  max-width: 980px;
  justify-content: center;
  align-items: center;
  text-align: center;
  margin: 0;
  padding: 0;
}
	.footer{
  /* Footer */

  padding: 20px;
  text-align: center;
  background: #425;
  opacity: 80%;
  background: #cc5729;
  font-size: auto;
  height: 100%;
  width: 100%;
  font-size: 19px;
	}
</style>
<body>
</center> 
<center><div style="width: 980px;margin-bottom: 10px" class="events">Gen<br>
		   <div style="width: 980px;margin-bottom: 10px;"  id="search-container">
        <form action="SamegenQ.php" method="post">
            <input style="width: 980px;margin-bottom: 10px" type="date" name="date" id="date" placeholder="Search...">
            <button type="submit" id="search-button">Search</button>
        </form>
    </div>
	
	  
    <h1>Home</h1>
    
    <?php if (isset($user)): ?>
        
        <p>Hello <?= htmlspecialchars($user["fname"]) ?></p>
        
        <p><a href="logout.php">Log out</a></p>
        
    <?php else: ?>
        
        <p><a href="login.php">Log in</a> or <a href="signup.html">sign up</a></p>
        
    <?php endif; ?>
    

</body>

</html>