class Atividade < ApplicationRecord
    validates_presence_of :nome, :sala, :professor, :horario_inicio, :horario_fim
end