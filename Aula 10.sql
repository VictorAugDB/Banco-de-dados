ALTER TABLE `exemplo` CHANGE `telefone` `tel` VARCHAR(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL; #Comando executado pelo PHPmyAdmin para mudar o nome de uma coluna;
#pode-se utilizar modify para atualizar dados dos campos porém é necessário usar o change para atualizar nome/tipo da coluna.

ALTER TABLE `exemplo` ADD `Idade` INT NOT NULL AFTER `nome`; #Adiciona o campo idade na tabela exemplo, após nome. // Obs: não se deve criar o campo idade, e sim data de nascimento

ALTER TABLE `exemplo` DROP `Idade`; #DROP aqui está sendo usado como parâmetro consseguindo deletar uma coluna/campo.
#O DROP também pode ser usado como um comando sendo capaz de excluir tabelas, databases, etc. ex: drop table exemplos;

ALTER TABLE `exemplo` ADD `sexo` ENUM('M' , 'F') NOT NULL AFTER `nome`; #Cria o campo sexo que só irá aceitar M ou F como entrada depois do campo nome.

UPDATE `exemplo` SET `telefone` = '1111-2222' WHERE `exemplo`.`id` = 2; #Altera o telefone onde o id = 2.

DELETE FROM `exemplo` WHERE `exemplo`.`id` = 4; #Deleta o os dados de onde o campo id = 4

use exemplo;

select * from exemplo;