<?
if ($email != "" and $destinatario != "")
{
  $destinatario = "kleber.barreto@msn.com"; // esse � o endere�o que receber� a mensagem.
  $cabecalho = "From: $email\nReply-To: $email";
  $corpo .= "Nome = $nome .\n";
  $corpo .= "Email = $email .\n";
  $corpo .= "Mensagem = $mensagem .\n\n";
  $assunto.= "Formul�rio de Contato";
  mail($destinatario, $assunto, $corpo, $cabecalho);
  echo ("&enviado=ok&");
}
?>