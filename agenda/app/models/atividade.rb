class Atividade < ApplicationRecord
    validates_presence_of :nome, :horario_inicio, :horario_fim, :sala, :professor, message: 'precisa ser preenchido!'
    # validates :horario_inicio, type: DateTime
    # validates :horario_fim, type: DateTime
end
