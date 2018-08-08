module CreateTableTodos

import SearchLight.Migrations: create_table, column, primary_key, add_index, drop_table

function up()
  create_table(:todos) do
    [
      primary_key()
      column(:subject, :string, limit = 255)
      column(:completed, :bool)
      column(:due_at, :date)
    ]
  end

  add_index(:todos, :completed)
  add_index(:todos, :due_at)
end

function down()
  drop_table(:todos)
end

end
