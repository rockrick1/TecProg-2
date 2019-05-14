class CreateAtividades < ActiveRecord::Migration[5.2]
  def change
    create_table :atividades do |t|
      t.string :nome
      t.string :horario_inicio
      t.string :horario_fim
      t.string :sala
      t.string :professor

      t.timestamps
    end
  end
end
