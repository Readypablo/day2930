<?php include("header.php");
require('bd_connect/db.php');
include("bd_connect/auth_session.php");

// if($_SESSION['user_name_last'] == 'admin'){
//         header('Refresh:40',session_destroy());
//     }










$sql3 = "SELECT workout.id,workout.first_namee,first_name,img,cost,workout.data,workout.mesto,workout.cod FROM workout inner join books on workout.lek_id = books.id";
$result = $con->query($sql3);


for($data = []; $row = mysqli_fetch_assoc($result); $data[]=$row)
{

}
$i=0;



$cost=0;
             

// ini_set('session_gc_maxlifetime', 1);





?>



<div class="form">
<h2 >профиль</h2>
      Имя:<?php echo   $_SESSION['user_name_us']; ?> <br>
      Фамилия:<?php echo   $_SESSION['user_name_last']; ?><br>

    
    <a href="bd_connect/logout.php">Выход</a>
</div>




<div class="popular-row">
<?php foreach($data as $elem)  {

if($_SESSION['user_name_us'] == $elem['first_namee']){

$id= $elem['id'];
echo '
<div class="popular-card">
<img src="../img/'.$elem['img'].'" alt="" class="imgbooks">
        <h2>'.$elem['first_name'].'</h2>
        <h2>цена: '.$elem['cost'].'$</h2>
        <h2>дата: '.$elem['data'].'</h2>
        <h2>место: '.$elem['mesto'].'</h2>
        <h2>личный код: #'.$elem['cod'].'</h2>';
        echo ' <form method="post"><input type="submit" value="Удалить" class="btn-del" name='.$id.'></form>';
        if(isset($_POST["$id"])){
        $query="DELETE FROM `workout` WHERE id=$id";
        mysqli_query($con , $query) or die ;
        }
    
  
        echo ' </div>';  }
} ?>

</div>


<?php 

if($_SESSION['user_name_last'] == 'admin'){
echo '
<a href="red.php" class="login-button">Изменить</a>
</form>
';
}


?>
     


     <script >
    if ( window.history.replaceState ) {
  window.history.replaceState( null, null, window.location.href );
}



</script>