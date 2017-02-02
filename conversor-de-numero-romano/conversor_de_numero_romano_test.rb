require "test/unit"
require "./conversor_de_numero_romano.rb"

class ConversorDeNumeroRomanoTest < Test::Unit::TestCase
  def teste_deve_entender_o_simbolo_I
    romano = ConversorDeNumeroRomano.new
    numero = romano.converte 'I'
    assert_equal 1, numero
  end

  def teste_deve_entender_o_simbolo_II
    romano = ConversorDeNumeroRomano.new
    numero = romano.converte 'II'
    assert_equal 2, numero
  end

  def teste_deve_entender_o_simbolo_XXII
    romano = ConversorDeNumeroRomano.new
    numero = romano.converte 'XXII'
    assert_equal 22, numero
  end

  def teste_deve_entender_o_simbolo_IV
    romano = ConversorDeNumeroRomano.new
    numero = romano.converte 'IV'
    assert_equal 4, numero
  end

  def teste_deve_entender_o_simbolo_MCMXCVI
    romano = ConversorDeNumeroRomano.new
    numero = romano.converte 'MCMXCVI'
    assert_equal 1996, numero
  end

end
