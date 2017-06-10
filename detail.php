<?php
$id = $_GET["id"];

//1.  DB接続します
try {
  $pdo = new PDO('mysql:dbname=gs_db16;charset=utf8;host=localhost','root','');
} catch (PDOException $e) {
  exit('データベースに接続できませんでした。'.$e->getMessage());
}

//２．データ登録SQL作成
$stmt = $pdo->prepare("SELECT * FROM gs_bm_table WHERE id=:id");
$stmt->bindValue(':id', $id, PDO::PARAM_INT);
$status = $stmt->execute();

//３．データ表示
$view="";
if($status==false){
  //execute（SQL実行時にエラーがある場合）
  $error = $stmt->errorInfo();
  exit("ErrorQuery:".$error[2]);
}else{
  //Selectデータの数だけ自動でループしてくれる
    $row = $stmt->fetch();
  }
?>

<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <title>データ登録</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">
    <style>
        div {
            padding: 10px;
            font-size: 16px;
        }

    </style>
</head>

<body>

    <!-- Head[Start] -->
    <header>
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="select.php">ブックマーク一覧</a>
                </div>
            </div>
        </nav>
    </header>
    <!-- Head[End] -->

    <!-- Main[Start] -->
    <form method="post" action="update.php">
        <input type="hidden" name="id" value="<?=$id?>">
        <div class="jumbotron">
            <fieldset>
                <legend>ブックマーク登録</legend>
                <label>書籍名：<input type="text" name="b_name" value="<?=$row["b_name"]?>"></label><br>
                <label>著者名：<input type="text" name="a_name" value="<?=$row["a_name"]?>"></label><br>
                <label>URL：<textArea name="b_url" rows="1" cols="40"><?=$row["b_url"]?></textArea></label><br>
                <label>コメント：<textArea name="comment" rows="4" cols="40"><?=$row["comment"]?></textArea></label><br>
                <input type="submit" value="ブックマークに登録">
            </fieldset>
        </div>
    </form>
    <!-- Main[End] -->


</body>

</html>
