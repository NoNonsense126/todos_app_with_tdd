module Feature
  def have_flash(text)
    have_css(".alert", text: text)
  end
end