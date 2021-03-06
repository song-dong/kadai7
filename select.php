<?php
//1.  DB接続します
try {
  $pdo = new PDO('mysql:dbname=gs_db16;charset=utf8;host=localhost','root','');
} catch (PDOException $e) {
  exit('データベースに接続できませんでした。'.$e->getMessage());
}

//２．データ登録SQL作成
$stmt = $pdo->prepare("SELECT * FROM gs_bm_table");
$status = $stmt->execute();

//３．データ表示
$view="";
if($status==false){
  //execute（SQL実行時にエラーがある場合）
  $error = $stmt->errorInfo();
  exit("ErrorQuery:".$error[2]);

}else{
  //Selectデータの数だけ自動でループしてくれる
  while( $result = $stmt->fetch(PDO::FETCH_ASSOC)){
    $view .= '<tr>';
    $view .= '<td width=200 align="center">'.$result["b_name"].'</td>';
    $view .= '<td width=150 align="center">'.$result["a_name"].'</td>';
    $view .= '<td width=100 align="center">'.'<a href='.$result["b_url"].'>'.'リンク'.'</a>'.'</td>';
    $view .= '<td width=400>'.$result["comment"].'</td>';
    $view .= '<td width=100 align="center">'.'<a href="detail.php?id='.$result["id"].'">';
    $view .= '[編集]';
    $view .= '</a>';
    $view .= '<br>';
    $view .= '<a href="delete.php?id='.$result["id"].'">';
    $view .= '[削除]';
    $view .= '</a>'.'</td>';
    $view .= '</tr>';
  }
}
?>


    <!DOCTYPE html>
    <html lang="ja">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>ブックマーク一覧</title>
        <link rel="stylesheet" href="css/range.css">
        <link rel="stylesheet" href="css/style.css">
        <style>
            div {
                padding: 10px;
                font-size: 16px;
            }

        </style>
    </head>

    <body id="main">
        <!-- Head[Start] -->
        <header>
            <nav class="navbar navbar-default">
                <div class="container-fluid">
                    <div class="navbar-header">
                        <a class="navbar-brand" href="index.html">ブックマーク追加に戻る</a>
                        <form method="post" action="search.php">
                            <input type="text" name="search">
                            <a href="search.php"><button id="search_btn">検索</button></a>
                        </form>
                    </div>
                </div>
            </nav>
        </header>
        <!-- Head[End] -->

        <!-- Main[Start] -->
        <div>
            <table border="1">
                <tr align="center">
                    <th>書籍名</th>
                    <th>著者名</th>
                    <th>URL</th>
                    <th>コメント</th>
                    <th>編集・削除</th>
                </tr>
                <?=$view?>
            </table>
        </div>
        <!-- Main[End] -->

    </body>

    </html>
