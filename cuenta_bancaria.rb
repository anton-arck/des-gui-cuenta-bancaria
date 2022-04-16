class CuentaBancaria
    attr_accessor :nombre_usuario
    def initialize(nombre_usuario, numero_cuenta, vip=0)
        @nombre_usuario = nombre_usuario
        @numero_cuenta = numero_cuenta   
        @vip = vip   
        raise RangeError, 'Los numeros de cuenta deben tener 8 digitos' if numero_cuenta.digits.count != 8
       # raise ArgumentError, 'Las cuentas VIP 1 y regulares 0' if vip ¡= 0 && vip ¡=1
         
    end
    def numero_de_cuenta
        "#{@vip}-#{@numero_cuenta}"
    end
end

puts cliente1= CuentaBancaria.new("Patricio",993838293).numero_de_cuenta