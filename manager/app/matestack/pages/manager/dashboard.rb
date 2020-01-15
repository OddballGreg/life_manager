class Pages::Manager::Dashboard < Matestack::Ui::Page
  def prepare
    @new_todo = Todo.new
    @todos = Todo.where(parent: nil, completed: false)
  end

  def response
    components do
      div class: "container" do
        header do
          heading size: 1, text: "My App"
        end
        async rerender_on: "todos_updated" do
          @todos.each do |todo|
            div class: "row" do
              div class: "col-6" do
                paragraph text: todo.description
              end
              div class: "col-6" do
                action(complete_todo(todo.id)) do
                  paragraph class: 'text-danger', text: 'Complete Task'
                end
              end
            end
          end
        end

        div do
          form(create_todo_config, :include) do
            div class: "form-group" do
              form_input key: :description, type: :text
            end
            form_submit do
              button class: 'btn btn-success btn-full', text: 'Create Task list'
            end
          end
        end
      end
    end
  end

  def create_todo_config
    {
      for: @new_todo,
      path: :todos_path,
      method: :post,
      success: {
        emit: "todos_updated"
      }
    }
  end

  def complete_todo(todo_id)
    {
      for: :todo,
      path: :todo_path,
      method: :patch,
      params: {
        id: todo_id,
        completed: true
      },
      success: {
        emit: "todos_updated"
      }
    }
  end
end
