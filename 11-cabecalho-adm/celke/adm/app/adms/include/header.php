<?php
$result_user_hd = "SELECT id, nome, imagem FROM adms_usuarios WHERE id='".$_SESSION['id']."' LIMIT 1";
$resultado_user_hd = mysqli_query($conn, $result_user_hd);
$row_user_hd = mysqli_fetch_assoc($resultado_user_hd);
$nome = explode(" ", $row_user_hd['nome']);
$prim_nome = $nome[0];
?>
<nav class="navbar navbar-expand navbar-dark bg-primary">
    <a class="sidebar-toggle text-light mr-3">
        <span class="navbar-toggler-icon"></span>
    </a>
    <a class="navbar-brand" href="#">Celke</a>

    <div class="collapse navbar-collapse">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle menu-header" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown">
                    <img class="rounded-circle" src="imagem/icon.png" width="20" height="20"> &nbsp;<span class="d-none d-sm-inline"><?php echo $prim_nome; ?></span>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                    <a class="dropdown-item" href="#"><i class="fas fa-user"></i> Perfil</a>
                    <a class="dropdown-item" href="<?php echo pg; ?>/acesso/sair"><i class="fas fa-sign-out-alt"></i> Sair</a>
                </div>
            </li>
        </ul>                
    </div>
</nav>