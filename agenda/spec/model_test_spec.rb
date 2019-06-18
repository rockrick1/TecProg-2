require 'rails_helper'

RSpec.describe Atividade, type: :model do
    it "is valid with valid attributes" do
        expect(Atividade.new(nome: "Tecprog", horario_inicio: "12:30",
               horario_fim: "13:30", sala: "b10", professor: "Jonas Brothers")).to be_valid
    end

    it "is not valid without a teacher" do
        expect(Atividade.new(nome: "Tecprog", horario_inicio: "12:30",
               horario_fim: "13:30", sala: "b10", professor: nil)).to_not be_valid
    end

    it "is not valid without a classroom" do
        expect(Atividade.new(nome: "Tecprog", horario_inicio: "12:30",
               horario_fim: "13:30", sala: nil, professor: "Eminem")).to_not be_valid
    end

    it "is not valid without a starting time" do
        expect(Atividade.new(nome: "Tecprog", horario_inicio: nil,
               horario_fim: "13:30", sala: "b10", professor: "Eminem")).to_not be_valid
    end

    it "is not valid without a ending time" do
        expect(Atividade.new(nome: "Tecprog", horario_inicio: "12:30",
               horario_fim: nil, sala: "b10", professor: "Eminem")).to_not be_valid
    end

    it "is not valid without a name" do
        expect(Atividade.new(nome: nil, horario_inicio: "12:30",
               horario_fim: "13:30", sala: "b10", professor: "Eminem")).to_not be_valid
    end
end