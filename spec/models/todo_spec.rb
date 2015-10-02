require 'rails_helper'

describe Todo, "#complete?" do
  it "will be true if completed" do
    todo = Todo.create(title: "Walk the dog")
    todo.update_attributes(completed_at: Time.now)

    expect(todo).to be_complete
  end
end

describe Todo, "#complete!" do
  it "will be true if completed" do
    todo = Todo.create(title: "Walk the dog")
    todo.complete!

    expect(todo).to be_complete
  end
end

describe Todo, "#mark_incomplete!" do
  it "will be true if completed" do
    todo = Todo.create(title: "Walk the dog", completed_at: Time.now)
    todo.mark_incomplete!

    expect(todo).not_to be_complete
  end
end