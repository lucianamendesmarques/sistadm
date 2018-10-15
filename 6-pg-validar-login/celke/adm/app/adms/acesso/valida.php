<?php

$SendLogin = filter_input(INPUT_POST, 'SendLogin', FILTER_SANITIZE_STRING);
if ($SendLogin) {
    $usuario_rc = filter_input(INPUT_POST, 'usuario', FILTER_SANITIZE_STRING);
    $usuario = str_ireplace(" ", "", $usuario_rc);
    $senha_rc = filter_input(INPUT_POST, 'senha', FILTER_SANITIZE_STRING);
    $senha = str_ireplace(" ", "", $senha_rc);

    if ((!empty($usuario)) AND ( !empty($senha))) {
        echo password_hash($senha, PASSWORD_DEFAULT);
    } else {
        $_SESSION['msg'] = "<div class='alert alert-danger'>Login ou senha incorreto!</div>";
        $url_destino = pg . '/acesso/login';
        header("Location: $url_destino");
    }
} else {
    $_SESSION['msg'] = "<div class='alert alert-danger'>Página não encontrada!</div>";
    $url_destino = pg . '/acesso/login';
    header("Location: $url_destino");
}
