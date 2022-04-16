
class Carta
    attr_accessor :numero, :pinta
    def initialize(numero,pinta)
        @numero = numero #Random.rand(1..13)
        @pinta = pinta # ['C','D','E','T'].sample
    end
    
end
pintas = ['C','D','E','T']
carta1 = Carta.new(Random.rand(1..13),pintas.sample)
cartas = []
n_cartas = 5
n_cartas.times do |i|
    cartas.push (Carta.new(Random.rand(1..13),pintas.sample))
end


print(cartas)
    