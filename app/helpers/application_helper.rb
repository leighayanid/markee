module ApplicationHelper
    
    def error_message(object)
        render(:partials => 'layouts/error_message', :locals => {:object => object})
    end
    
end
