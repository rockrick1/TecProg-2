class AtividadesController < ApplicationController
    def create
        @atividade = Atividade.new(
             params.require(:atividade).permit(:nome, :horario_inicio, :horario_fim, :sala, :professor))
        # salva
        @atividade.save
        # mostra
        redirect_to @atividade
    end

    def show
        @atividade = Atividade.find(params[:id])
    end

    def index
        @atividades = Atividade.all
    end
end
