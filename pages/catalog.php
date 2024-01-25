<?php 
include("header.php");
require('bd_connect/db.php');
include("bd_connect/auth_session.php");



?>










<div class="container" style="max-width:800px;margin:0 auto;margin-top:50px;">  
     
     <div style="margin-bottom:30px;">
     <form action="" method="post">
     <input type="text" class="form-control" id="query_find" placeholder="Search" name="query_find" /></div>
     <input type="submit" value="искать" name="buton" >
     <input type="submit" value="Убывание" name="butona" >
     <input type="submit" value="Возрастание" name="butond" >
     </form>

     <table class="table table-hover">
         <thead>
             <tr>
              
            
             </tr>
         </thead>
         <tbody id="tbl_body">
                 <!-- <tr>
                     <td><?php echo $row['first_name']; ?></td>
                     <td><?php echo $row['img']; ?></td>
                  
                 </tr> -->
             <?php  ?>
         </tbody>
     </table>
 </div>
</div>
</div>




<?php


if (isset($_POST['butond'])) {
  $queryy = mysqli_query($con, "SELECT * FROM `books` ORDER BY cost DESC");
  $outputt = '';
  if ($queryy->num_rows > 0) {
    while ($row = mysqli_fetch_array($queryy)) {
        $outputt .= '<tr>
<td>' . $row['first_name'] . '</td>
<td> цена: ' . $row['cost'] . '$</td>
<td> <img src="../img/' . $row['img'] . '" class="tabletka"</td>
</tr>';
    }}
    else {
      $outputt = '
<tr>
  <td colspan="4"> No result found. </td>   
</tr>';
  }

echo $outputt;
}


if (isset($_POST['butona'])) {
  $queryq = mysqli_query($con, "SELECT * FROM `books` ORDER BY cost ASC");
  $outputy = '';
  if ($queryq->num_rows > 0) {
    while ($row = mysqli_fetch_array($queryq)) {
        $outputy .= '<tr>
<td>' . $row['first_name'] . '</td>
<td> цена: ' . $row['cost'] . '$</td>
<td> <img src="../img/' . $row['img'] . '" class="tabletka"</td>
</tr>';
    }
}
else {
  $outputy = '
<tr>
<td colspan="4"> No result found. </td>   
</tr>';
}
echo $outputy;
}


require_once 'bd_connect/db.php';
if (isset($_POST['buton'])) {
    $query_find = mysqli_real_escape_string($con, $_POST['query_find']);
    $query = mysqli_query($con, "SELECT * FROM books where first_name like '%$query_find%'order by img limit 20");
    $output = '';
    if ($query->num_rows > 0) {
        while ($row = mysqli_fetch_array($query)) {
            $output .= '<tr>
    <td>' . $row['first_name'] . '</td>
    <td> цена: ' . $row['cost'] . '$</td>
    <td> <img src="../img/' . $row['img'] . '" class="tabletka"</td>
  </tr>';
        }
    } else {
        $output = '
  <tr>
    <td colspan="4"> No result found. </td>   
  </tr>';
    }
    echo $output;
}
?>













<div class="popular-row">
 <?php 















     $first_name=$_SESSION['user_name_us'];
   $sql2 = 'SELECT * from books';
   $result = $con->query($sql2);
   while ($row = $result->fetch_assoc()) {
       $id= $row['id'];
       echo '
       <div class="popular-card">
       <img src="../img/'.$row['img'].'" alt="" class="imgbooks">
            <h2>'.$row['first_name'].'</h2>
            <h2>цена: '. $row['cost'].'$</h2>';
            if($_SESSION['user_name_last'] !== 'admin'){

            echo ' <form method="post"><button type="submit" value='.$id.' class="btn-del" name='.$id.'>Оформить </button>';
            echo 'выбери время<br><input type="radio" name="sex" value="12-30"/>12-30</td><br><input type="radio" name="sex" value="14-30"/>14-30</td><br>
            <input type="number" min="1" max="25"  name="mesto" required> выбери место  </form>';
            echo '<a href="info.php"><button type="submit" value="dfbob class="btn-del" name='.$id.'>детально глянуть </button></a>';

             if(isset($_POST["$id"])){
             $kk=$_POST["$id"];

             $b=$_POST['sex']; 

             $mesto = stripcslashes($_REQUEST['mesto']);
             $mesto = mysqli_real_escape_string($con,$mesto);

             $cod =  rand(10000000, 99999999);
             $sql = "INSERT INTO `workout` (first_namee, lek_id, data,mesto,cod) VALUES ('$first_name', '$kk','$b','$mesto','$cod') ";
             mysqli_query($con, $sql) or die(mysqli_error($con));
            }
          }
           


            if($_SESSION['user_name_last'] == 'admin'){
            echo ' <form method="post"><button type="submit" value='.$id.' class="btn-del" name='.$id.'> удалить товар </button></form>';


            if(isset($_POST["$id"])){
               $query="DELETE FROM `books` WHERE id=$id";
               mysqli_query($con , $query) or die ;
              }
            }







            // if(isset($_POST["$id"])){
            //    $kk=$_POST["$id"];

            //  $sql = "INSERT INTO `workout` (first_namee, lek_id) VALUES ('$first_name', '$kk') ";
            //  mysqli_query($con, $sql) or die(mysqli_error($con));
            // }
           
           
             echo ' </div>';
   }
   ?>
<br>
</div>




</div>


