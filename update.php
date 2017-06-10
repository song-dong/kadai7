<?php
//1.POSTでParamを取得
$id = $_POST["id"];
$b_name = $_POST["b_name"];
$a_name = $_POST["a_name"];
$b_url = $_POST["b_url"];
$comment = $_POST["comment"];

//2.DB接続など
try {
  $pdo = new PDO('mysql:dbname=gs_db16;charset=utf8;host=localhost','root','');
} catch (PDOException $e) {
  exit('データベースに接続できませんでした。'.$e->getMessage());
}

//3.UPDATE gs_an_table SET ....; で更新(bindValue)
//　基本的にinsert.phpの処理の流れです。
$stmt = $pdo->prepare("UPDATE gs_bm_table SET b_name=:b_name, a_name=:a_name, b_url=:b_url, comment=:comment WHERE id=:id");
$stmt->bindValue(':id', $id, PDO::PARAM_INT);
$stmt->bindValue(':b_name', $b_name, PDO::PARAM_STR);
$stmt->bindValue(':a_name', $a_name, PDO::PARAM_STR);
$stmt->bindValue(':b_url', $b_url, PDO::PARAM_STR);
$stmt->bindValue(':comment', $comment, PDO::PARAM_STR);
$status = $stmt->execute();

$view="";
if($status==false){
  //execute（SQL実行時にエラーがある場合）
  $error = $stmt->errorInfo();
  exit("ErrorQuery:".$error[2]);
}else{
  //Selectデータの数だけ自動でループしてくれる
    header("Location: select.php");
    exit;
  }


?>