-- Inserindo dados nas tabelas
INSERT INTO TB_MOTTU_IOT (iot_hash, latitude, longitude) VALUES (1, 41.89022, 12.49225);
INSERT INTO TB_MOTTU_IOT (iot_hash, latitude, longitude) VALUES (2, -22.95196, -43.21059);
INSERT INTO TB_MOTTU_IOT (iot_hash, latitude, longitude) VALUES (3, -13.16328, -72.54535);
INSERT INTO TB_MOTTU_IOT (iot_hash, latitude, longitude) VALUES (4, 30.3285, 35.4444);
INSERT INTO TB_MOTTU_IOT (iot_hash, latitude, longitude) VALUES (5, 20.6843, -88.5678);

INSERT INTO TB_MOTTU_MODELO (id_modelo, nm_modelo, desc_modelo) VALUES (1, 'Modelo A', 'Descrição do Modelo A');
INSERT INTO TB_MOTTU_MODELO (id_modelo, nm_modelo, desc_modelo) VALUES (2, 'Modelo B', 'Descrição do Modelo B');
INSERT INTO TB_MOTTU_MODELO (id_modelo, nm_modelo, desc_modelo) VALUES (3, 'Modelo C', 'Descrição do Modelo C');
INSERT INTO TB_MOTTU_MODELO (id_modelo, nm_modelo, desc_modelo) VALUES (4, 'Modelo D', 'Descrição do Modelo D');
INSERT INTO TB_MOTTU_MODELO (id_modelo, nm_modelo, desc_modelo) VALUES (5, 'Modelo E', 'Descrição do Modelo E');
 
INSERT INTO TB_MOTTU_STATUS (id_stat, nm_stat) VALUES (1, 'Ativo');
INSERT INTO TB_MOTTU_STATUS (id_stat, nm_stat) VALUES (2, 'Inativo');
INSERT INTO TB_MOTTU_STATUS (id_stat, nm_stat) VALUES (3, 'Manutenção');
INSERT INTO TB_MOTTU_STATUS (id_stat, nm_stat) VALUES (4, 'Reservado');
INSERT INTO TB_MOTTU_STATUS (id_stat, nm_stat) VALUES (5, 'Disponível');

INSERT INTO TB_MOTTU_PAIS (id_pais, nm_pais) VALUES (1, 'País A');
INSERT INTO TB_MOTTU_PAIS (id_pais, nm_pais) VALUES (2, 'País B');
INSERT INTO TB_MOTTU_PAIS (id_pais, nm_pais) VALUES (3, 'País C');
INSERT INTO TB_MOTTU_PAIS (id_pais, nm_pais) VALUES (4, 'País D');
INSERT INTO TB_MOTTU_PAIS (id_pais, nm_pais) VALUES (5, 'País E');

INSERT INTO TB_MOTTU_ESTADO (id_estado, nm_estado, sigla_estado, id_pais) VALUES (1, 'Estado A', 'EA', 1);
INSERT INTO TB_MOTTU_ESTADO (id_estado, nm_estado, sigla_estado, id_pais) VALUES (2, 'Estado B', 'EB', 1);
INSERT INTO TB_MOTTU_ESTADO (id_estado, nm_estado, sigla_estado, id_pais) VALUES (3, 'Estado C', 'EC', 1);
INSERT INTO TB_MOTTU_ESTADO (id_estado, nm_estado, sigla_estado, id_pais) VALUES (4, 'Estado D', 'ED', 1);
INSERT INTO TB_MOTTU_ESTADO (id_estado, nm_estado, sigla_estado, id_pais) VALUES (5, 'Estado E', 'EE', 1);

INSERT INTO TB_MOTTU_CIDADE (id_cidade, nm_cidade, id_estado) VALUES (1, 'Cidade A', 1);
INSERT INTO TB_MOTTU_CIDADE (id_cidade, nm_cidade, id_estado) VALUES (2, 'Cidade B', 2);
INSERT INTO TB_MOTTU_CIDADE (id_cidade, nm_cidade, id_estado) VALUES (3, 'Cidade C', 3);
INSERT INTO TB_MOTTU_CIDADE (id_cidade, nm_cidade, id_estado) VALUES (4, 'Cidade D', 4);
INSERT INTO TB_MOTTU_CIDADE (id_cidade, nm_cidade, id_estado) VALUES (5, 'Cidade E', 5);

INSERT INTO TB_MOTTU_BAIRRO (id_bairro, nm_bairro, id_cidade) VALUES (1, 'Bairro A', 1);
INSERT INTO TB_MOTTU_BAIRRO (id_bairro, nm_bairro, id_cidade) VALUES (2, 'Bairro B', 2);
INSERT INTO TB_MOTTU_BAIRRO (id_bairro, nm_bairro, id_cidade) VALUES (3, 'Bairro C', 3);
INSERT INTO TB_MOTTU_BAIRRO (id_bairro, nm_bairro, id_cidade) VALUES (4, 'Bairro D', 4);
INSERT INTO TB_MOTTU_BAIRRO (id_bairro, nm_bairro, id_cidade) VALUES (5, 'Bairro E', 5);

INSERT INTO TB_MOTTU_ENDERECO (id_endereco, logradouro, nr_endereco, complemento, nr_cep, id_bairro) VALUES (1, 'Rua A', 100, 'Apto 1', '12345678', 1);
INSERT INTO TB_MOTTU_ENDERECO (id_endereco, logradouro, nr_endereco, complemento, nr_cep, id_bairro) VALUES (2, 'Rua B', 200, 'Apto 2', '23456789', 2);
INSERT INTO TB_MOTTU_ENDERECO (id_endereco, logradouro, nr_endereco, complemento, nr_cep, id_bairro) VALUES (3, 'Rua C', 300, 'Apto 3', '34567890', 3);
INSERT INTO TB_MOTTU_ENDERECO (id_endereco, logradouro, nr_endereco, complemento, nr_cep, id_bairro) VALUES (4, 'Rua D', 400, 'Apto 4', '45678901', 4);
INSERT INTO TB_MOTTU_ENDERECO (id_endereco, logradouro, nr_endereco, complemento, nr_cep, id_bairro) VALUES (5, 'Rua E', 500, 'Apto 5', '56789012', 5);

INSERT INTO TB_MOTTU_FILIAL (id_filial, nm_filial, id_endereco) VALUES (1, 'Filial A', 1);
INSERT INTO TB_MOTTU_FILIAL (id_filial, nm_filial, id_endereco) VALUES (2, 'Filial B', 2);
INSERT INTO TB_MOTTU_FILIAL (id_filial, nm_filial, id_endereco) VALUES (3, 'Filial C', 3);
INSERT INTO TB_MOTTU_FILIAL (id_filial, nm_filial, id_endereco) VALUES (4, 'Filial D', 4);
INSERT INTO TB_MOTTU_FILIAL (id_filial, nm_filial, id_endereco) VALUES (5, 'Filial E', 5);

INSERT INTO TB_MOTTU_MOTO (id_moto, placa, nr_motor, iot_hash, id_stat, id_filial, id_modelo) VALUES (1, 'ABC1234', 'MOTOR001', 1, 1, 1, 1);
INSERT INTO TB_MOTTU_MOTO (id_moto, placa, nr_motor, iot_hash, id_stat, id_filial, id_modelo) VALUES (2, 'DEF5678', 'MOTOR002', 2, 2, 2, 2);
INSERT INTO TB_MOTTU_MOTO (id_moto, placa, nr_motor, iot_hash, id_stat, id_filial, id_modelo) VALUES (3, 'GHI9012', 'MOTOR003', 3, 3, 3, 3);
INSERT INTO TB_MOTTU_MOTO (id_moto, placa, nr_motor, iot_hash, id_stat, id_filial, id_modelo) VALUES (4, 'JKL3456', 'MOTOR004', 4, 4, 4, 4);
INSERT INTO TB_MOTTU_MOTO (id_moto, placa, nr_motor, iot_hash, id_stat, id_filial, id_modelo) VALUES (5, 'MNO7890', 'MOTOR005', 5, 5, 5, 5);
 
INSERT INTO TB_MOTTU_AREA (id_area, pos_x, pos_y, id_filial, id_stat) VALUES (1, 100, 200, 1, 1);
INSERT INTO TB_MOTTU_AREA (id_area, pos_x, pos_y, id_filial, id_stat) VALUES (2, 150, 250, 2, 2);
INSERT INTO TB_MOTTU_AREA (id_area, pos_x, pos_y, id_filial, id_stat) VALUES (3, 200, 300, 3, 3);
INSERT INTO TB_MOTTU_AREA (id_area, pos_x, pos_y, id_filial, id_stat) VALUES (4, 250, 350, 4, 4);
INSERT INTO TB_MOTTU_AREA (id_area, pos_x, pos_y, id_filial, id_stat) VALUES (5, 300, 400, 5, 5);

COMMIT;