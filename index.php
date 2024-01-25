<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style/style.css">
</head>
<body>
    
<header>


<a href="index.php" class="link_log"><p>Кинотеатр ЗАРЯ</p></a>
</header>

<main>


<div class="menuhad">

<a href="pages/login.php" class="link_head">Вход</a>

<a href="pages/info.php" class="link_head">подробнее</a>
<a href="pages/catalog.php" class="link_head">товары</a>
<a href="pages/profil.php" class="link_head">Профиль</a>

</div>

<h1 class="zag">Огромный выбор Фильмов</h1>


<div class="ccolletion">
<img src="img/zzz.jpg" alt="">

</div>

<div class="popular-row">
<?php  require('pages/bd_connect/db.php');





$first_name=$_SESSION['user_name_us'];
$sql2 = 'SELECT * from books';
$result = $con->query($sql2);
while ($row = $result->fetch_assoc()) {
    $id= $row['id'];
    echo '
    <div class="popular-card">
    <img src="../img/'.$row['img'].'" alt="" class="imgbooks">
         <h2>'.$row['first_name'].'</h2>
         <h2>цена: '. $row['cost'].'$</h2>
         время<br>12-30<br>14-30<br>
         
         '; 
          echo ' </div>';
}




?>

</div>





<div class="deal-wheel">
  <!-- блок с призами -->
  <ul class="spinner"></ul>
  <!-- язычок барабана -->
  <div class="ticker"></div>
  <!-- кнопка -->
  <button class="btn-spin">Испытай удачу</button>
</div>


</main>





<script src="js/js.js"></script>

</body>
</html>