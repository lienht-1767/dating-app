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
    Gender.show_gender
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

  def show_name_gender gender_id
    Gender.name_gender gender_id
  end
end
