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

  def create_index params_page, index, per_page
    params_page = 1 if params_page.nil?
    (params_page.to_i - 1) * per_page.to_i + index.to_i + 1
  end
end
