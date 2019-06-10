module ApplicationHelper
    def load_title(name, string_link = nil)
        case name
        when 'abouts'
            "033 Rooftop - Sobre"
        when 'galleries'
            "033 Rooftop - Galeria"
        when "budgets"
            if request.parameters[:link_title] == 'contact'
                "033 Rooftop - Contato"
            else
                "033 Rooftop - Evento"
            end
        else
            "033 Rooftop"
        end
    end
end
