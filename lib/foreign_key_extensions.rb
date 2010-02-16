module ForeignKeyExtensions
  def add_foreign_key(from_table, from_column, to_table)
    constraint = constraint_name(from_table, from_column)

    failsafe do
      execute %{alter table #{from_table} add constraint #{constraint} foreign key (#{from_column}) references #{to_table}(id)}
    end
  end

  def remove_foreign_key(from_table, from_column)
    constraint = constraint_name(from_table, from_column)

    failsafe do
      if mysql?
        execute %{alter table #{from_table} drop foreign key #{constraint}}
      else
        execute %{alter table #{from_table} drop constraint #{constraint}}
      end
    end
  end

  def constraint_name(from_table, from_column)
    "#{from_table}_#{from_column}_foreign_key"
  end

  protected

  def mysql?
    ActiveRecord::Base.connection.adapter_name == "MySQL"
  end

  def failsafe(&block)
    begin
      block.call
    rescue => e
      puts e.to_yaml
      puts "Database may not support foreign key constraints"
    end
  end
end
