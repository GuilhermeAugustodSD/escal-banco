use escal_db;

INSERT INTO empresa(nome, nome_social, cnpj, dta_inicio, atividade, registros_necessários, licenciamento) VALUES('empresa1', 'empresadois', '1234567891011', '2000-08-14', null, null, 'sim' );

INSERT INTO socios(nome, participacao_societaria, id_empresa) VALUES('Joao', 15, 6);

INSERT INTO funcionario(dta_contratacao, dta_demissao, nome, genero, id_empresa) VALUES('2000-11-12', null, 'Sabrino', 'masculino', 6);

INSERT INTO departamento(nome_departamento) VALUES('departamento1');

INSERT INTO empresa_departamento(id_empresa, id_departamento) VALUES(6,6);

INSERT INTO documentos(descr, doc, id_departamento) VALUES('documentoTESTE', null, 6);

INSERT INTO doc_pessoal(contratacoes, demicoes, id_documentos ) VALUES(5,3, 6);

INSERT INTO doc_financeiro(receita, despesa, data_entrada, id_documentos) VALUES(2000.00, 1000.00, '2003-04-23', 6);

INSERT INTO doc_contabil(valor_faturamento, valor_honorario, ultimo_reajuste, num_lancamentos_contab, prolabore, id_documentos) VALUES(300000.00, 1000.00, '2004-06-05', 23, 'sim', 6);

INSERT INTO doc_legalizacao(registro_1, registro_2, id_documentos) VALUES('registro1', 'registro2', 6);

SELECT * FROM empresa;
SELECT * FROM socios;
SELECT * FROM departamento;

