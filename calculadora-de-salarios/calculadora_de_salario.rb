class CalculadoraDeSalario

  def calcula_salario funcionario
    if funcionario.cargo == Cargo::DESENVOLVEDOR
      return funcionario.salario * 0.8 if funcionario.salario > 3000
      return funcionario.salario * 0.9
    end
    return funcionario.salario * 0.85
  end

end
