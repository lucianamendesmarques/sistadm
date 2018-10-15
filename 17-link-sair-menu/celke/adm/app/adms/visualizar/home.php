<?php
if (!isset($seg)) {
    exit;
}
include_once 'app/adms/include/head.php';
?>
<body>    
    <?php
    include_once 'app/adms/include/header.php';
    ?>
    <div class="d-flex">
        <?php
        include_once 'app/adms/include/menu.php';
        
        echo "Bem vindo a HOME<br>";
        echo "<a href='" . pg . "/acesso/sair'>Sair</a><br>";
        echo "Id da página: " .$row_pg['id_pg']."<br>";
        include_once 'app/adms/include/rodape_lib.php';
        ?>

    </div>
</body>


