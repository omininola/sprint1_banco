SET SERVEROUTPUT ON;

BEGIN
  -- Total de motos por filial
  DBMS_OUTPUT.PUT_LINE('==================================');
  DBMS_OUTPUT.PUT_LINE('Total de Motos por Filial:');
  DBMS_OUTPUT.PUT_LINE('----------------------------------');
  FOR rec_filial IN (
    SELECT
      F.nm_filial,
      COUNT(M.id_moto) AS total_motos
    FROM TB_MOTTU_MOTO M
    JOIN TB_MOTTU_FILIAL F ON M.id_filial = F.id_filial
    GROUP BY F.nm_filial
    ORDER BY F.nm_filial
  ) LOOP
    DBMS_OUTPUT.PUT_LINE('Filial: ' || rec_filial.nm_filial || ' - Total de Motos: ' || rec_filial.total_motos);
  END LOOP;

  DBMS_OUTPUT.PUT_LINE('==================================');

  -- Total de motos por status
  DBMS_OUTPUT.PUT_LINE('==================================');
  DBMS_OUTPUT.PUT_LINE('Total de Motos por Status:');
  DBMS_OUTPUT.PUT_LINE('----------------------------------');
  FOR rec_status IN (
    SELECT
      S.nm_stat,
      COUNT(M.id_moto) AS total_motos
    FROM TB_MOTTU_MOTO M
    JOIN TB_MOTTU_STATUS S ON M.id_stat = S.id_stat
    GROUP BY S.nm_stat
    ORDER BY S.nm_stat
  ) LOOP
    DBMS_OUTPUT.PUT_LINE('Status: ' || rec_status.nm_stat || ' - Total de Motos: ' || rec_status.total_motos);
  END LOOP;

  DBMS_OUTPUT.PUT_LINE('==================================');
  
  -- Total de motos por modelo
  DBMS_OUTPUT.PUT_LINE('==================================');
  DBMS_OUTPUT.PUT_LINE('Total de Motos por Modelo:');
  DBMS_OUTPUT.PUT_LINE('----------------------------------');
  FOR rec_modelo IN (
    SELECT
      MO.nm_modelo,
      COUNT(M.id_moto) AS total_motos
    FROM TB_MOTTU_MOTO M
    JOIN TB_MOTTU_MODELO MO ON M.id_modelo = MO.id_modelo
    GROUP BY MO.nm_modelo
    ORDER BY MO.nm_modelo
  ) LOOP
    DBMS_OUTPUT.PUT_LINE('Modelo: ' || rec_modelo.nm_modelo || ' - Total de Motos: ' || rec_modelo.total_motos);
  END LOOP;

  DBMS_OUTPUT.PUT_LINE('==================================');
END;