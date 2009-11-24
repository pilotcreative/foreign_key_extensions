require "test_helper"

class ForeignKeyExtensionsTest < Test::Unit::TestCase
  include ForeignKeyExtensions

  context "Foreign key extension lib" do

    context "failsafe" do
      should "return warning if block raise exception" do
        expects(:puts).twice
        send(:failsafe) do
          raise StandardError
        end
      end

      should "do not return any warning if block doesnt raise exception" do
        expects(:puts).never
        send(:failsafe) do
          #empty block
        end
      end
    end

    context "constraint_name" do
      should "return constraint name" do
        constraint_name("table", "column").should == "table_column_foreign_key"
      end
    end

    context "add foreign key" do
      should "execute sql command" do
        expects(:execute).with("alter table articles add constraint articles_user_id_foreign_key foreign key (user_id) references users(id)")
        add_foreign_key "articles", "user_id", "users"
      end
    end

    context "remove foreign key" do
      should "execute sql command" do
        expects(:execute).with("alter table articles drop constraint articles_user_id_foreign_key")
        remove_foreign_key "articles", "user_id"
      end
    end

  end
end
