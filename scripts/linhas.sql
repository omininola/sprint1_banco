SET SERVEROUTPUT ON;

DECLARE

  CURSOR c_motos IS
    SELECT 
      NVL(LAG(PLACA) OVER (ORDER BY ID_MOTO), 'Vazio') AS PLACA_ANTERIOR,
      PLACA AS PLACA_ATUAL,
      NVL(LEAD(PLACA) OVER (ORDER BY ID_MOTO), 'Vazio') AS PLACA_PROXIMA
    FROM TB_MOTTU_MOTO;

BEGIN
  FOR rec_moto IN c_motos LOOP
    DBMS_OUTPUT.PUT_LINE('Placa Anterior: ' || rec_moto.PLACA_ANTERIOR || 
                         ', Placa Atual: ' || rec_moto.PLACA_ATUAL || 
                         ', Placa Próxima: ' || rec_moto.PLACA_PROXIMA);
  END LOOP;
END;