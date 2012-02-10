module ApplicationHelper
  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "iService Application"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
  # get logo
  def logo(logo_name)
    image_tag(logo_name, alt: "iService App", class: "round", width: "300", height: "55") 
  end
end
