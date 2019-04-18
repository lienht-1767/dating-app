module ApplicationHelper
  def full_title page_title = ""
    base_title = t ".title"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end
  end

  def show_gender
    Gender.names.keys
  end

  def show_education
    InformationUser.educations.keys
  end

  def show_relationship
    InformationUser.relationships.keys
  end

  def show_children
    InformationUser.children.keys
  end
end
