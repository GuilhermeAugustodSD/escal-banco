use escal_db;

INSERT INTO empresa(nome, nome_social, cnpj, dta_inicio, atividade, registros_necessários, licenciamento) VALUES('empresa1', 'empresadois', '1234567891011', '2000-08-14', null, null, 'sim' );
INSERT INTO empresa(nome, nome_social, cnpj, dta_inicio, atividade, registros_necessários, licenciamento) VALUES('empresa2', 'empresa', '9821798412', '2000-08-14', 'atividade1', null, 'sim' );
INSERT INTO empresa(nome, nome_social, cnpj, dta_inicio, atividade, registros_necessários, licenciamento) VALUES('ampresa', 'ampresa', '74832812', '2000-08-14', 'ativdade2', null, 'não' );
INSERT INTO empresa(nome, nome_social, cnpj, dta_inicio, atividade, registros_necessários, licenciamento) VALUES('ampresa2', 'ampresadois', '62741771', '2005-12-14', 'atividade3', null, 'não' );
INSERT INTO empresa(nome, nome_social, cnpj, dta_inicio, atividade, registros_necessários, licenciamento) VALUES('umpresa', 'umpresa', '1231202139', '2007-09-14', 'atividade4', null, 'sim' );

INSERT INTO socios(nome, participacao_societaria, id_empresa) VALUES('Joao', 15, 6);
INSERT INTO socios(nome, participacao_societaria, id_empresa) VALUES('Sabrino', 10, 6);
INSERT INTO socios(nome, participacao_societaria, id_empresa) VALUES('Bafri', 8, 8);
INSERT INTO socios(nome, participacao_societaria, id_empresa) VALUES('Paule', 12, 9);
INSERT INTO socios(nome, participacao_societaria, id_empresa) VALUES('Joao', 20, 10);


INSERT INTO funcionario(dta_contratacao, dta_demissao, nome, genero, id_empresa) VALUES('2000-11-12', null, 'Sabrino', 'masculino', 6);
INSERT INTO funcionario(dta_contratacao, dta_demissao, nome, genero, id_empresa) VALUES('2000-11-12', null, 'Jozias', 'masculino', 6);
INSERT INTO funcionario(dta_contratacao, dta_demissao, nome, genero, id_empresa) VALUES('2004-09-13', null, 'Cojeo', 'masculino', 8);
INSERT INTO funcionario(dta_contratacao, dta_demissao, nome, genero, id_empresa) VALUES('2006-02-05', null, 'Uoter', 'masculino', 9);
INSERT INTO funcionario(dta_contratacao, dta_demissao, nome, genero, id_empresa) VALUES('2008-04-22', null, 'Prada', 'feminino', 10);

INSERT INTO departamento(nome_departamento) VALUES('departamento1');
INSERT INTO departamento(nome_departamento) VALUES('departamento2');
INSERT INTO departamento(nome_departamento) VALUES('departamento3');
INSERT INTO departamento(nome_departamento) VALUES('departamento4');
INSERT INTO departamento(nome_departamento) VALUES('departamento5');

INSERT INTO empresa_departamento(id_empresa, id_departamento) VALUES(6,6);
INSERT INTO empresa_departamento(id_empresa, id_departamento) VALUES(8,10);
INSERT INTO empresa_departamento(id_empresa, id_departamento) VALUES(7,9);
INSERT INTO empresa_departamento(id_empresa, id_departamento) VALUES(9,9);
INSERT INTO empresa_departamento(id_empresa, id_departamento) VALUES(8,8);

INSERT INTO documentos(descr, doc, id_departamento) VALUES('documentoTESTE', null, 6);
INSERT INTO documentos(descr, doc, id_departamento) VALUES('documentoETSET', null, 7);
INSERT INTO documentos(descr, doc, id_departamento) VALUES('documentoTESTE2', null, 8);
INSERT INTO documentos(descr, doc, id_departamento) VALUES('otnemucod', null, 9);
INSERT INTO documentos(descr, doc, id_departamento) VALUES('documentoTESTE', null, 10);

INSERT INTO doc_pessoal(contratacoes, demicoes, id_documentos ) VALUES(5,3, 6);
INSERT INTO doc_pessoal(contratacoes, demicoes, id_documentos ) VALUES(9,1, 7);
INSERT INTO doc_pessoal(contratacoes, demicoes, id_documentos ) VALUES(7,4, 8);
INSERT INTO doc_pessoal(contratacoes, demicoes, id_documentos ) VALUES(2,3, 9);
INSERT INTO doc_pessoal(contratacoes, demicoes, id_documentos ) VALUES(4,7, 10);

INSERT INTO doc_financeiro(receita, despesa, data_entrada, id_documentos) VALUES(2000.00, 1000.00, '2003-04-23', 6);
INSERT INTO doc_financeiro(receita, despesa, data_entrada, id_documentos) VALUES(22340.00, 12000.00, '2007-06-14', 7);
INSERT INTO doc_financeiro(receita, despesa, data_entrada, id_documentos) VALUES(13400.00, 13200.00, '2002-02-21', 8);
INSERT INTO doc_financeiro(receita, despesa, data_entrada, id_documentos) VALUES(20234.00, 12314.00, '2005-05-24', 9);


INSERT INTO doc_contabil(valor_faturamento, valor_honorario, ultimo_reajuste, num_lancamentos_contab, prolabore, id_documentos) VALUES(300000.00, 1000.00, '2004-06-05', 23, 'sim', 6);
INSERT INTO doc_contabil(valor_faturamento, valor_honorario, ultimo_reajuste, num_lancamentos_contab, prolabore, id_documentos) VALUES(3000.00, 800.00, '2006-03-25', 23, 'não', 7);
INSERT INTO doc_contabil(valor_faturamento, valor_honorario, ultimo_reajuste, num_lancamentos_contab, prolabore, id_documentos) VALUES(2000.00, 1200.00, '2003-07-15', 23, 'sim', 8);
INSERT INTO doc_contabil(valor_faturamento, valor_honorario, ultimo_reajuste, num_lancamentos_contab, prolabore, id_documentos) VALUES(6300.00, 1500.00, '2008-04-18', 23, 'não', 9);

INSERT INTO doc_legalizacao(registro_1, registro_2, id_documentos) VALUES('registro1', 'registro2', 6);
INSERT INTO doc_legalizacao(registro_1, registro_2, id_documentos) VALUES('Oregistro', 'Uregistro', 7);
INSERT INTO doc_legalizacao(registro_1, registro_2, id_documentos) VALUES('Theregistro', 'Elregistro', 9);
INSERT INTO doc_legalizacao(registro_1, registro_2, id_documentos) VALUES('registro3', 'registro4', 8);

SELECT * FROM empresa;
SELECT * FROM socios;
SELECT * FROM departamento;
SELECT * FROM funcionario;
SELECT * FROM documentos;
