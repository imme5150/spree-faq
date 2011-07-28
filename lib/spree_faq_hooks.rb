Deface::Override.new(:virtual_path => "layouts/admin",
                     :insert_bottom => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
                     :text =>  %[<%=  tab(:question_categories, :label => :question_categories_admin)  %>])