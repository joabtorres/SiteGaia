<?php 
	if(isset($_POST['enviar'])){
		$email_site= "faleconosco@carlosgaia.com.br";
		$para = "joabtorres1508@gmail.com";
		//dados
		$nome = $_POST['tNome'];
		$email_de= $_POST['tEmail'];
		$telefone=  $_POST['tTelefone'];
		$assunto = $_POST['tAssunto'];
		$mensagem= $_POST['tMensagem'];
		$msg="<strong>Nome: </strong>".$nome."<br><strong>Telefone: </strong>".$telefone."<br><strong>Email: </strong>".$email_de."<br> <strong>mensagem:</strong> <br>".$mensagem;

		$headers= "MIME-Version: 1.1 \r\n";
		$headers.= "Content-Type: text/html; charset=UTF-8 \r\n";
		$headers.="From: ".$email_site."\r\n";
		$headers .="Return-Path: ".$email_site."\r\n";
		if(empty($nome) && empty($email_de) && empty($telefone) && empty($assunto) && empty($mensagem)){
			echo '<script>alert("Preencha todos os Campos!"); location.href=("");</script>';			
		}else if(empty($nome)){
			echo '<script>alert("Informe seu Nome!"); location.href=("");</script>';
		}else if(empty($email_de)){
			echo '<script>alert("Informe seu E-mail!"); location.href=("");</script>';
		}else if(empty($telefone)){
			echo '<script>alert("Informe seu Telefone!"); location.href=("");</script>';
		}else if(empty($mensagem)){
			echo '<script>alert("Informe a Mensagem!"); location.href=("");</script>';
		}else if(empty($assunto)){
			echo '<script>alert("Informe o Assunto!"); location.href=("");</script>';
		}else{
			mail($para, $assunto, $msg, $headers, $email_site);
			echo "<script> alert('Mensagem Enviada com sucesso !') </script>";
		}
	}
	echo '<meta HTTP-EQUIV="Refresh" CONTENT="0.5; URL=http://www.carlosgaia.com.br/contato.html>';
 ?>
