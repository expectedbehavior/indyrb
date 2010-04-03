module LayoutHelper
  def tab_for(tab, link, options)
    css_class = options[:class].to_s
    css_class += " current_tab" if @current_tab == tab.to_s
    content_tag :li, link_to(options[:label] || tab.to_s.titleize, link), :class => css_class
  end
end
