module ApplicationHelper

  def format_date_time(datetime)
    l(datetime.localtime, format: :long)
  end

  def format_date(datetime)
    l(datetime.localtime, format: :long)
  end

  def format_datetime_picker(datetime)
    datetime.strftime("%Y-%m-%d %H:%M")
  end

  # def fa_icon(icon)
  #   content_tag 'i', '', class: "fa fa-#{icon}"
  # end

  def lorem_ipsum
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce quis velit nec sapien blandit accumsan non vel neque. Sed vitae imperdiet diam. Integer tristique sapien id risus ultrices pellentesque. Nullam mollis posuere orci sit amet sodales. Nunc sed lobortis mi. Proin a massa orci. Phasellus ut sapien purus. Praesent a tempus leo. Duis ante erat, pretium a lectus id, feugiat aliquam elit. Fusce feugiat enim ut vehicula interdum. Cras congue justo ex, non sollicitudin arcu luctus quis. Aliquam erat volutpat. Vestibulum et purus vel dolor condimentum tincidunt a in justo.'
  end

end
