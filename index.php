<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <title>データ登録</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
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
                    <form method="post" action="search.php">
                        <input type="text" name="search">
                        <select name="range">
                            <option value="b_name" selected>書籍名</option>
                            <option value="a_name">著者名</option>
                        </select>
                        <a href="search.php"><button id="search_btn">検索</button></a>
                    </form>
                </div>
            </div>
        </nav>
    </header>
    <!-- Head[End] -->

    <!-- Main[Start] -->
    <form method="post" action="insert.php">
        <div class="jumbotron">
            <fieldset>
                <legend>ブックマーク登録</legend>
                <label>書籍名：<input type="text" name="b_name"></label><br>
                <label>著者名：<input type="text" name="a_name"></label><br>
                <label>URL：<textArea name="b_url" rows="1" cols="40"></textArea></label><br>
                <label>コメント：<textArea name="comment" rows="4" cols="40"></textArea></label><br>
                <input type="submit" value="ブックマークに追加">
            </fieldset>
        </div>
    </form>
    <!-- Main[End] -->


</body>

</html>
