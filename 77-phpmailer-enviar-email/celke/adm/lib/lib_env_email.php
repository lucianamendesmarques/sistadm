<?php

/* if(!isset($seg)){
  exit;
  } */

// Import PHPMailer classes into the global namespace
// These must be at the top of your script, not inside a function
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

//Load Composer's autoloader
require 'lib/vendor/autoload.php';

function email_phpmailer($assunto, $mensagem, $mensagem_texo, $nome_destino = null, $email_destino)
{
    $mail = new PHPMailer(true);                              // Passing `true` enables exceptions
    try {
        //Server settings 
        //$mail->SMTPDebug = 2;                                 // Enable verbose debug output
        $mail->isSMTP();                                      // Set mailer to use SMTP
        $mail->Host = 'servidor-smtp';                    // Specify main and backup SMTP servers
        $mail->SMTPAuth = true;                               // Enable SMTP authentication


        $mail->Username = 'e-mail usado para enviar';                 // SMTP username
        $mail->Password = 'senha do e-mail';                           // SMTP password
        $mail->SMTPSecure = 'ssl';                            // Enable TLS encryption, `ssl` also accepted
        $mail->Port = 465;                                    // TCP port to connect to
        //Recipients
        $mail->setFrom('E-mail usado para enviar', 'nome');
        $mail->addAddress($email_destino, $nome_destino);     // Add a recipient
        //$mail->addAddress('ellen@example.com');               // Name is optional
        $mail->addReplyTo('E-mail usado para enviar', 'nome');
        //$mail->addCC('cc@example.com');
        //$mail->addBCC('bcc@example.com');
        //Attachments
        //$mail->addAttachment('/var/tmp/file.tar.gz');         // Add attachments
        //$mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name
        //Content
        $mail->isHTML(true);                                  // Set email format to HTML
        $mail->Subject = $assunto;
        $mail->Body = $mensagem;
        $mail->AltBody = $mensagem_texo;

        $mail->send();
        return true;
    } catch (Exception $e) {
        return false;
    }
}
