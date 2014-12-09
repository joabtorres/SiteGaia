<?php
/** 
 * As configurações básicas do WordPress.
 *
 * Esse arquivo contém as seguintes configurações: configurações de MySQL, Prefixo de Tabelas,
 * Chaves secretas, Idioma do WordPress, e ABSPATH. Você pode encontrar mais informações
 * visitando {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. Você pode obter as configurações de MySQL de seu servidor de hospedagem.
 *
 * Esse arquivo é usado pelo script ed criação wp-config.php durante a
 * instalação. Você não precisa usar o site, você pode apenas salvar esse arquivo
 * como "wp-config.php" e preencher os valores.
 *
 * @package WordPress
 */

// ** Configurações do MySQL - Você pode pegar essas informações com o serviço de hospedagem ** //
/** O nome do banco de dados do WordPress */
define('DB_NAME', 'wordpress');

/** Usuário do banco de dados MySQL */
define('DB_USER', 'root');

/** Senha do banco de dados MySQL */
define('DB_PASSWORD', '');

/** nome do host do MySQL */
define('DB_HOST', 'localhost');

/** Conjunto de caracteres do banco de dados a ser usado na criação das tabelas. */
define('DB_CHARSET', 'utf8');

/** O tipo de collate do banco de dados. Não altere isso se tiver dúvidas. */
define('DB_COLLATE', '');

/**#@+
 * Chaves únicas de autenticação e salts.
 *
 * Altere cada chave para um frase única!
 * Você pode gerá-las usando o {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * Você pode alterá-las a qualquer momento para desvalidar quaisquer cookies existentes. Isto irá forçar todos os usuários a fazerem login novamente.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'F4>A(R{V*}IoI[AtMv_7:?Iy66w1CIf{f6TjL.t,[y-*jj%:_=1)S7be*@HX$cQY');
define('SECURE_AUTH_KEY',  'amMDAC=L6q`[R~i?-9V8#kWi@*oK?-D&.kx@-z9xLb2;k|<T3Q7{|F55)]~w`>~t');
define('LOGGED_IN_KEY',    'Ly64O_5nsh`CN~ GQNv*z|S-O8l^;MSFd9>8}aYca$(T2g6o}HTqcl$^/Xoj#Qi+');
define('NONCE_KEY',        '^+I(TToD[4JU$0M&(+d<#KN1ORUwSHo~W-4jqe&&TV;J8onhR!<!NyOrRKq7f2=@');
define('AUTH_SALT',        'j !)K>U?$~%E:cM$|-MQ~<sS$FO(_9ly7Z$oY%wB)e[!b-X/M1 |^&);O`Y5TXmX');
define('SECURE_AUTH_SALT', 'Cw~2kU8mGagDS QfdNpgv4vB&s=7DpC2llH%7(q3d(Kp(-S 2Y^# tsBUIMOapO0');
define('LOGGED_IN_SALT',   'No}io9>RY6p(JB8guRu%oB=1B.<MMo9!f?EM!12HkfCR!/adHj;$]r+F)V:Xz~fd');
define('NONCE_SALT',       '$o_(o!:QGCp{3,?(T$Lc1w@S[N<52#lfa87 *sKrhehtz]vjnp-~_*w.xy Q:%NP');

/**#@-*/

/**
 * Prefixo da tabela do banco de dados do WordPress.
 *
 * Você pode ter várias instalações em um único banco de dados se você der para cada um um único
 * prefixo. Somente números, letras e sublinhados!
 */
$table_prefix  = 'cg_';


/**
 * Para desenvolvedores: Modo debugging WordPress.
 *
 * altere isto para true para ativar a exibição de avisos durante o desenvolvimento.
 * é altamente recomendável que os desenvolvedores de plugins e temas usem o WP_DEBUG
 * em seus ambientes de desenvolvimento.
 */
define('WP_DEBUG', false);

/* Isto é tudo, pode parar de editar! :) */

/** Caminho absoluto para o diretório WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');
	
/** Configura as variáveis do WordPress e arquivos inclusos. */
require_once(ABSPATH . 'wp-settings.php');
