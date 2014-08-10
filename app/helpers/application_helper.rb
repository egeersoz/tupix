module ApplicationHelper

  # def alpha_id(param_id, reverse)
  #   if reverse
  #     id = "#{param_id}".split('-').first.to_i(36)
  #   else
  #     uuid = "#{param_id}-#{Time.now.to_i}".to_i.to_s(36)
  #   end
  # end



  # Returns the full title on a per-page basis
  def full_title(page_title)
    base_title = "Tupix"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end

  # Used to style flash messages based on their type
  def flash_class(level)
    case level
      when :notice then "alert alert-info"
      when :success then "alert alert-success"
      when :error then "alert alert-danger"
      when :alert then "alert alert-danger"
    end
  end

  def is_active?(controller, section)
    if current_page?(controller: controller, section: section)
      "active"
    else
      ""
    end
  end

end
