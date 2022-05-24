<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SQL Vulneravel</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }
	nav{
	    min-height:300px;
	}
        header, footer {
            width: 100%;
            height: 70px;
            background-color: brown;
            clear: both;
        }

        header h1 {
            color: white;
        }
	footer p{
	    color:white;
	}
        .produto {
            width: 150px;
            height: 200px;
            border: 1px solid blue;
            margin: 10px;
            float: left;
        }
        form{
            margin: 10px;
        }
    </style>
</head>

<body onload="removeLimit()">
    <header>
        <h1>Produtos</h1>
    </header>
    <nav>
        <div id="input">
            <form method="post">
                pesquisa
                <input type="text" name="id" id="id" maxlength="10">
                <input type="submit" value="pesquisar">
            </form>
        </div>
        <hr>
        <?php
            require_once 'config.php';

            if(isset($_POST['id']))
            {
                $id = $_POST['id'];
                
                $sql = "SELECT produto, preco_venda FROM produtos WHERE id = '$id'";
                
		$resp1 = mysqli_query($link, $sql) or die( '<pre>' . ((is_object($link)) ? mysqli_error($link) : (($___mysqli_res = mysqli_connect_error()) ? $___mysqli_res : false)) . '</pre>' );
                
                while($resp = mysqli_fetch_assoc($resp1))
                {
                    // Get values
                    $produto = $resp["produto"];
                    $preco = $resp["preco_venda"];
            
                    // Feedback for end user
                    //echo "<pre>ID: {$id}<br />Produto: {$produto}<br />Valor: {$preco}</pre>";
                    echo "<div class='produto'>Produto: {$produto}<br>Valor: {$preco}<br></div>";
                }
                ((is_null($___mysqli_res = mysqli_close($link))) ? false : $___mysqli_res);
            }
        ?>
    </nav>
    <footer><p>Aplicação vulneravel para testes de sql injection</p></footer>
    <script src="script.js"></script>
</body>

</html>
