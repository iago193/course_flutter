casa = float(input("Valor da casa R$ "))
salario = float(input("Salário do comprador R$ "))
anos = int(input("Quantos anos de financiamento? "))
prestacao = casa / (anos * 12)
minimo = salario * 30 / 100

print(f"Para pagar uma casa de R$ {casa} em {anos} anos, a prestação será de R$ {prestacao:.2f}")

if(prestacao <= minimo):
    print("Financiamento APROVADO")
else:
    print("Financiamento NEGADO")