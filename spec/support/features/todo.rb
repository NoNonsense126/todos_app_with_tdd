module Feature
  def create_todo(title)
    click_on "Create a new todo"

    fill_in "Title", with: title

    click_on "Create todo"
  end
end