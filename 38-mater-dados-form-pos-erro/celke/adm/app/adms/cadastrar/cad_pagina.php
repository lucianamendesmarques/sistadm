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
                        <h2 class="display-4 titulo">Cadastrar Página</h2>
                    </div>
                    <div class="p-2">
                        <?php
                        $btn_list = carregar_btn('listar/list_pagina', $conn);
                        if ($btn_list) {
                            echo "<a href='" . pg . "/listar/list_pagina' class='btn btn-outline-info btn-sm'>Listar</a> ";
                        }
                        ?>
                    </div>
                </div><hr>
                <?php
                if (isset($_SESSION['msg'])) {
                    echo $_SESSION['msg'];
                    unset($_SESSION['msg']);
                }
                ?>
                <form method="POST" action="<?php echo pg; ?>/processa/proc_cad_pagina">  
                    <div class="form-row">
                        <div class="form-group col-md-5">
                            <label><span class="text-danger">*</span> Nome</label>
                            <input name="nome_pagina" type="text" class="form-control" id="nome" placeholder="Nome da Página" value="<?php if(isset($_SESSION['dados']['nome_pagina'])){ echo $_SESSION['dados']['nome_pagina']; } ?>">
                        </div>
                        <div class="form-group col-md-4">
                            <label><span class="text-danger">*</span> Endereço</label>
                            <input name="endereco" type="text" class="form-control" id="email" placeholder="Endereço da página, ex: listar/list_pagina" value="<?php if(isset($_SESSION['dados']['endereco'])){ echo $_SESSION['dados']['endereco']; } ?>">
                        </div>
                        <div class="form-group col-md-3">
                            <label> Ícone</label>
                            <input name="icone" type="text" class="form-control" id="email" placeholder="Ícone da página" value="<?php if(isset($_SESSION['dados']['icone'])){ echo $_SESSION['dados']['icone']; } ?>">
                        </div>
                    </div>
                    <div class="form-group">
                        <label> Observação</label>
                        <textarea name="obs" class="form-control"><?php if(isset($_SESSION['dados']['obs'])){ echo $_SESSION['dados']['obs']; } ?></textarea>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-5">
                            <label><span class="text-danger">*</span> Palavra chave</label>
                            <input name="keywords" type="text" class="form-control" id="nome" placeholder="Palavra chave" value="<?php if(isset($_SESSION['dados']['keywords'])){ echo $_SESSION['dados']['keywords']; } ?>">
                        </div>
                        <div class="form-group col-md-4">
                            <label><span class="text-danger">*</span> Descrição</label>
                            <input name="description" type="text" class="form-control" id="email" placeholder="Descrição da página" value="<?php if(isset($_SESSION['dados']['description'])){ echo $_SESSION['dados']['description']; } ?>">
                        </div>
                        <div class="form-group col-md-3">
                            <label><span class="text-danger">*</span> Autor</label>
                            <input name="author" type="text" class="form-control" id="email" placeholder="Desenvolvedor" value="<?php if(isset($_SESSION['dados']['author'])){ echo $_SESSION['dados']['author']; } ?>">
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <?php
                            $result_robots = "SELECT id, nome FROM adms_robots";
                            $resultado_robots = mysqli_query($conn, $result_robots);
                            ?>
                            <label><span class="text-danger">*</span> Indexar</label>
                            <select name="adms_robot_id" id="adms_robot_id" class="form-control">
                                <option value="">Selecione</option>
                                <?php
                                while($row_robots = mysqli_fetch_assoc($resultado_robots)){
                                    echo "<option value='".$row_robots['id']."'>".$row_robots['nome']."</option>";
                                }
                                ?>
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <label><span class="text-danger">*</span> Página pública</label>
                            <select name="lib_pub" id="lib_pub" class="form-control">
                                <option>Selecione</option>
                                <option value="1">Sim</option>
                                <option value="2">Não</option>
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <?php
                            $result_paginas = "SELECT id, nome_pagina FROM adms_paginas ORDER BY nome_pagina ASC";
                            $resultado_paginas = mysqli_query($conn, $result_paginas);
                            ?>
                            <label><span class="text-danger">*</span> Página Dependente</label>
                            <select name="depend_pg" id="depend_pg" class="form-control">
                                <option>Selecione</option>
                                <?php
                                while($row_pagina = mysqli_fetch_assoc($resultado_paginas)){
                                    echo "<option value='".$row_pagina['id']."'>".$row_pagina['nome_pagina']."</option>";
                                }
                                ?>
                            </select>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-4">                            
                            <?php
                            $result_grps_pgs = "SELECT id, nome FROM adms_grps_pgs ORDER BY nome ASC";
                            $resultado_grps_pgs = mysqli_query($conn, $result_grps_pgs);
                            ?>
                            <label><span class="text-danger">*</span> Grupo</label>
                            <select name="adms_grps_pg_id" id="adms_grps_pg_id" class="form-control">
                                <option>Selecione</option>
                                <?php
                                while($row_grps_pg = mysqli_fetch_assoc($resultado_grps_pgs)){
                                    echo "<option value='".$row_grps_pg['id']."'>".$row_grps_pg['nome']."</option>";
                                }
                                ?>
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <?php
                            $result_tps_pgs = "SELECT id, tipo, nome FROM adms_tps_pgs ORDER BY nome ASC";
                            $resultado_tps_pgs = mysqli_query($conn, $result_tps_pgs);
                            ?>
                            <label><span class="text-danger">*</span> Tipo</label>
                            <select name="adms_tps_pg_id" id="adms_tps_pg_id" class="form-control">
                                <option>Selecione</option>
                                <?php
                                while($row_tps_pgs = mysqli_fetch_assoc($resultado_tps_pgs)){
                                    echo "<option value='".$row_tps_pgs['id']."'>".$row_tps_pgs['tipo']." - ".$row_tps_pgs['nome']."</option>";
                                }
                                ?>
                            </select>
                        </div>
                        <div class="form-group col-md-4">
                            <?php
                            $result_sits_pgs = "SELECT id, nome FROM adms_sits_pgs ORDER BY nome ASC";
                            $resultado_sits_pgs = mysqli_query($conn, $result_sits_pgs);
                            ?>
                            <label><span class="text-danger">*</span> Situação</label>
                            <select name="adms_sits_pg_id" id="depend_pg" class="form-control">
                                <option>Selecione</option>
                                <?php
                                while($row_sits_pgs = mysqli_fetch_assoc($resultado_sits_pgs)){
                                    echo "<option value='".$row_sits_pgs['id']."'>".$row_sits_pgs['nome']."</option>";
                                }
                                ?>
                            </select>
                        </div>
                    </div>
                    
                    <p>
                        <span class="text-danger">* </span>Campo obrigatório
                    </p>
                    <input name="SendCadPg" type="submit" class="btn btn-success" value="Cadastrar">
                </form>
            </div>    
        </div>
        <?php
        include_once 'app/adms/include/rodape_lib.php';
        ?>

    </div>
</body>


