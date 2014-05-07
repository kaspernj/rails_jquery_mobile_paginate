module ApplicationHelper
  def jquery_mobile_paginate(query)
    html_paginate = ""
    html_paginate << content_tag(:h2, t(".pagination"))
    
    total_pages = query.total_pages
    current_page = query.current_page
    
    previous_page = current_page - 1
    previous_page = 1 if previous_page < 1
    
    next_page = current_page + 1
    next_page = total_pages if next_page > total_pages
    
    html_paginate << content_tag(:div, :data => {:role => "controlgroup", :type => "horizontal", :mini => "true"}) do
      html = ""
      html << link_to("&nbsp;".html_safe, params.merge(:page => previous_page), :data => {:role => "button", :icon => "arrow-l", :iconpos => "notext"})
      
      url = "?"
      url << request.query_parameters.except(:page).to_query
      url << "&" unless url == "?"
      url << "page="
      
      html << content_tag(:select, :onchange => "location.href='#{j(url)}' + this.value".html_safe) do
        html_select = ""
        1.upto(total_pages) do |page|
          html_select << content_tag(:option, page, :value => page, :selected => (page == current_page ? "selected" : nil))
        end
        
        html_select.html_safe
      end
      
      html << link_to("&nbsp;".html_safe, params.merge(:page => next_page), :data => {:role => "button", :icon => "arrow-r", :iconpos => "notext"})
      html.html_safe
    end
    
    html_paginate.html_safe
  end
end
