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
        ?>
        <div class="content p-1">
            <div class="list-group-item">
                <div class="d-flex">
                    <div class="mr-auto p-2">
                        <h2 class="display-4 titulo">Listar Nível de Acesso</h2>
                    </div>
                    <a href="cadastrar.html">
                        <div class="p-2">
                            <button class="btn btn-outline-success btn-sm">
                                Cadastrar
                            </button>
                        </div>
                    </a>
                </div>
                <div class="alert alert-success" role="alert">
                    Usuário apagado com sucesso!
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <?php
                //Receber o número da página
                $pagina_atual = filter_input(INPUT_GET, 'pagina', FILTER_SANITIZE_NUMBER_INT);
                $pagina = (!empty($pagina_atual)) ? $pagina_atual : 1;

                //Setar a quantidade de itens por pagina
                $qnt_result_pg = 1;

                //Calcular o inicio visualização
                $inicio = ($qnt_result_pg * $pagina) - $qnt_result_pg;
                $resul_niv_aces = "SELECT * FROM adms_niveis_acessos WHERE ordem >= '" . $_SESSION['ordem'] . "' ORDER BY ordem ASC LIMIT $inicio, $qnt_result_pg";
                $resultado_niv_aces = mysqli_query($conn, $resul_niv_aces);
                if (($resultado_niv_aces) AND ( $resultado_niv_aces->num_rows != 0)) {
                    ?>
                    <div class="table-responsive">
                        <table class="table table-striped table-hover table-bordered">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Nome</th>
                                    <th class="d-none d-sm-table-cell">Ordem</th>
                                    <th class="text-center">Ações</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php
                                while ($row_niv_aces = mysqli_fetch_assoc($resultado_niv_aces)) {
                                    ?>
                                    <tr>
                                        <th><?php echo $row_niv_aces['id']; ?></th>
                                        <td><?php echo $row_niv_aces['nome']; ?></td>
                                        <td class="d-none d-sm-table-cell"><?php echo $row_niv_aces['ordem']; ?></td>
                                        <td class="text-center">
                                            <span class="d-none d-md-block">
                                                <a href="visualizar.html" class="btn btn-outline-primary btn-sm">Visualizar</a>
                                                <a href="editar.html" class="btn btn-outline-warning btn-sm">Editar</a>
                                                <a href="apagar.html" class="btn btn-outline-danger btn-sm" data-toggle="modal" data-target="#apagarRegistro">Apagar</a>
                                            </span>
                                            <div class="dropdown d-block d-md-none">
                                                <button class="btn btn-primary dropdown-toggle btn-sm" type="button" id="acoesListar" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    Ações
                                                </button>
                                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="acoesListar">
                                                    <a class="dropdown-item" href="visualizar.html">Visualizar</a>
                                                    <a class="dropdown-item" href="editar.html">Editar</a>
                                                    <a class="dropdown-item" href="apagar.html" data-toggle="modal" data-target="#apagarRegistro">Apagar</a>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                    <?php
                                }
                                ?>

                            </tbody>
                        </table>
                        <?php
                        $result_pg = "SELECT COUNT(id) AS num_result FROM adms_niveis_acessos WHERE ordem >= '" . $_SESSION['ordem'] . "'";
                        $resultado_pg = mysqli_query($conn, $result_pg);
                        $row_pg = mysqli_fetch_assoc($resultado_pg);
                        //echo $row_pg['num_result'];
                        //Quantidade de pagina 
                        $quantidade_pg = ceil($row_pg['num_result'] / $qnt_result_pg);
                        //Limitar os link antes depois
                        $max_links = 2;
                        echo "<nav aria-label='paginacao-blog'>";
                        echo "<ul class='pagination pagination-sm justify-content-center'>";
                        echo "<li class='page-item'>";
                        echo "<a class='page-link' href='" . pg . "/listar/list_niv_aces?pagina=1' tabindex='-1'>Primeira</a>";
                        echo "</li>";

                        for($pag_ant = $pagina - $max_links; $pag_ant <= $pagina - 1; $pag_ant++){
                            if($pag_ant >= 1){
                                echo "<li class='page-item'><a class='page-link' href='".pg."/listar/list_niv_aces?pagina=$pag_ant'>$pag_ant</a></li>";
                            }                            
                        }

                        echo "<li class='page-item active'>";
                        echo "<a class='page-link' href='#'>$pagina</a>";
                        echo "</li>";

                        for($pag_dep = $pagina + 1;$pag_dep <= $pagina + $max_links; $pag_dep++){
                            if($pag_dep <= $quantidade_pg){
                                echo "<li class='page-item'><a class='page-link' href='".pg."/listar/list_niv_aces?pagina=$pag_dep'>$pag_dep</a></li>";
                            }
                        }

                        echo "<li class='page-item'>";
                        echo "<a class='page-link' href='" . pg . "/listar/list_niv_aces?pagina=$quantidade_pg'>Última</a>";
                        echo "</li>";
                        echo "</ul>";
                        echo "</nav>";
                        ?>                        
                    </div>
                    <?php
                } else {
                    ?>
                    <div class="alert alert-danger" role="alert">
                        Nenhum registro encontrado!
                    </div>
                    <?php
                }
                ?>

            </div>
        </div>
        <?php
        include_once 'app/adms/include/rodape_lib.php';
        ?>

    </div>
</body>


