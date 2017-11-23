module ApplicationHelper
	def nav_link(text, path)
	  options = current_page?(path) ? { class: "active nav-link" } : { class: "nav-link" }
	  content_tag(:li, options) do
	    link_to text, path
	  end
	end
end
