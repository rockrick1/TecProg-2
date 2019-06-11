class Atividade < ApplicationRecord
    validates_presence_of :nome, :sala, :professor
    validates :horario_inicio, presence: { message: 'precisa ser um horário!' }
    validates :horario_fim, presence: { message: 'precisa ser um horário!' }
    # validates :horario_inicio, type: DateTime
    # validates :horario_fim, type: DateTime
end
