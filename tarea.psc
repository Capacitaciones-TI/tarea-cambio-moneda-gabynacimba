Algoritmo moneda
	Definir moneda_origen, moneda_destino Como Caracter
    Definir cantidad, cantidad_convertida, tasa_conversion Como Real
	
    Escribir "Ingrese la moneda fuente (USD, EUR, GBP, AUD): "
    Leer moneda_origen
    Escribir "Ingrese la moneda destino (USD, EUR, GBP, AUD): "
    Leer moneda_destino
    Escribir "Ingrese la cantidad en ", moneda_origen, ": "
    Leer cantidad
	
    tasa_conversion <- 0
	
    Si moneda_origen = "USD" Y moneda_destino = "USD" Entonces
        tasa_conversion <- 1
    FinSi
    Si moneda_origen = "USD" Y moneda_destino = "EUR" Entonces
        tasa_conversion <- 0.93
    FinSi
    Si moneda_origen = "USD" Y moneda_destino = "GBP" Entonces
        tasa_conversion <- 0.79
    FinSi
    Si moneda_origen = "USD" Y moneda_destino = "AUD" Entonces
        tasa_conversion <- 1.50
    FinSi
	
    Si moneda_origen = "EUR" Y moneda_destino = "USD" Entonces
        tasa_conversion <- 1.07
    FinSi
    Si moneda_origen = "EUR" Y moneda_destino = "EUR" Entonces
        tasa_conversion <- 1
    FinSi
    Si moneda_origen = "EUR" Y moneda_destino = "GBP" Entonces
        tasa_conversion <- 0.85
    FinSi
    Si moneda_origen = "EUR" Y moneda_destino = "AUD" Entonces
        tasa_conversion <- 1.61
    FinSi
	
    Si moneda_origen = "GBP" Y moneda_destino = "USD" Entonces
        tasa_conversion <- 1.27
    FinSi
    Si moneda_origen = "GBP" Y moneda_destino = "EUR" Entonces
        tasa_conversion <- 1.18
    FinSi
    Si moneda_origen = "GBP" Y moneda_destino = "GBP" Entonces
        tasa_conversion <- 1
    FinSi
    Si moneda_origen = "GBP" Y moneda_destino = "AUD" Entonces
        tasa_conversion <- 1.90
    FinSi
	
    Si moneda_origen = "AUD" Y moneda_destino = "USD" Entonces
        tasa_conversion <- 0.67
    FinSi
    Si moneda_origen = "AUD" Y moneda_destino = "EUR" Entonces
        tasa_conversion <- 0.62
    FinSi
    Si moneda_origen = "AUD" Y moneda_destino = "GBP" Entonces
        tasa_conversion <- 0.53
    FinSi
    Si moneda_origen = "AUD" Y moneda_destino = "AUD" Entonces
        tasa_conversion <- 1
    FinSi
	
    Si tasa_conversion = 0 Entonces
        Escribir "Moneda no válida."
    Sino
        cantidad_convertida <- cantidad * tasa_conversion
        Escribir "La cantidad en ", moneda_destino, " es ", cantidad_convertida
    FinSi

FinAlgoritmo
