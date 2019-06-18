class Atividade < ApplicationRecord
    validates_presence_of :nome, :sala, :professor, :horario_inicio, :horario_fim
    validate :conflitos

    private

    def conflitos
        atividades = Atividade.all

        atividades.each do |atv|
            if atv.nome != nome # que nao seja a atividade que estamos inserindo
                # checa se tem mais de uma atividade ao mesmo tempo na sala
                if atv.sala == sala
                    if atv.horario_fim > horario_inicio and atv.horario_inicio < horario_fim
                        errors.add(atv.nome,  "ja acontecerá nessa sala e nesse horario!")
                    end
                # checa se o professor esta em duas aulas ao mesmo tempo
                elsif atv.professor == professor
                    if atv.horario_fim > horario_inicio and atv.horario_inicio < horario_fim
                        errors.add(atv.horario_inicio.to_s, atv.professor + " está ocupado nesse horario!")
                    end
                end
            end
        end
    end
end