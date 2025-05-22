SET SERVEROUTPUT ON;

BEGIN
  -- Total de áreas por filial
  DBMS_OUTPUT.PUT_LINE('==================================');
  DBMS_OUTPUT.PUT_LINE('Total de Áreas por Filial:');
  DBMS_OUTPUT.PUT_LINE('----------------------------------');
  FOR rec_area IN (
    SELECT
      F.nm_filial,
      COUNT(A.id_area) AS total_areas
    FROM TB_MOTTU_AREA A
    JOIN TB_MOTTU_FILIAL F ON A.id_filial = F.id_filial
    GROUP BY F.nm_filial
    ORDER BY F.nm_filial
  ) LOOP
    DBMS_OUTPUT.PUT_LINE('Filial: ' || rec_area.nm_filial || ' - Total de Áreas: ' || rec_area.total_areas);
  END LOOP;

  DBMS_OUTPUT.PUT_LINE('==================================');

  -- Total de filiais por cidade
  DBMS_OUTPUT.PUT_LINE('==================================');
  DBMS_OUTPUT.PUT_LINE('Total de Filiais por Cidade:');
  DBMS_OUTPUT.PUT_LINE('----------------------------------');
  FOR rec_filial_cidade IN (
    SELECT
      C.nm_cidade,
      COUNT(F.id_filial) AS total_filiais
    FROM TB_MOTTU_FILIAL F
    JOIN TB_MOTTU_ENDERECO E ON F.id_endereco = E.id_endereco
    JOIN TB_MOTTU_BAIRRO B ON E.id_bairro = B.id_bairro
    JOIN TB_MOTTU_CIDADE C ON B.id_cidade = C.id_cidade
    GROUP BY C.nm_cidade
    ORDER BY C.nm_cidade
  ) LOOP
    DBMS_OUTPUT.PUT_LINE('Cidade: ' || rec_filial_cidade.nm_cidade || ' - Total de Filiais: ' || rec_filial_cidade.total_filiais);
  END LOOP;

  DBMS_OUTPUT.PUT_LINE('==================================');

  -- Total de motos por pais
  DBMS_OUTPUT.PUT_LINE('==================================');
  DBMS_OUTPUT.PUT_LINE('Total de Motos por País:');
  DBMS_OUTPUT.PUT_LINE('----------------------------------');
  FOR rec_moto_pais IN (
    SELECT
      P.nm_pais,
      COUNT(M.id_moto) AS total_motos
    FROM TB_MOTTU_MOTO M
    JOIN TB_MOTTU_FILIAL F ON M.id_filial = F.id_filial
    JOIN TB_MOTTU_ENDERECO E ON F.id_endereco = E.id_endereco
    JOIN TB_MOTTU_BAIRRO B ON E.id_bairro = B.id_bairro
    JOIN TB_MOTTU_CIDADE C ON B.id_cidade = C.id_cidade
    JOIN TB_MOTTU_ESTADO EST ON C.id_estado = EST.id_estado
    JOIN TB_MOTTU_PAIS P ON EST.id_pais = P.id_pais
    GROUP BY P.nm_pais
    ORDER BY P.nm_pais
  ) LOOP
    DBMS_OUTPUT.PUT_LINE('País: ' || rec_moto_pais.nm_pais || ' - Total de Motos: ' || rec_moto_pais.total_motos);
  END LOOP;

  DBMS_OUTPUT.PUT_LINE('==================================');
END;