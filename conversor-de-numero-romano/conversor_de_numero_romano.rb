class ConversorDeNumeroRomano
  TABELA = {
    'I' => 1,
    'V' => 5,
    'X' => 10,
    'L' => 50,
    'C' => 100,
    'D' => 500,
    'M' => 1000
  }
  def converte numero_em_romano
    acumulador = 0
    ultimo_da_direita = 0

    numero_em_romano.split('').reverse.each do |digito_em_romano|
      atual = TABELA[digito_em_romano]

      multiplicador = 1
      multiplicador = -1 if(atual < ultimo_da_direita)

      acumulador += atual * multiplicador

      ultimo_da_direita = atual
    end
    return acumulador
  end
end
