Deface::Override.new(:virtual_path => "layouts/admin",
                     :name => 'faq_admin_tabs',
                     :insert_bottom => "[data-hook='admin_tabs'], #admin_tabs[data-hook]",
                     :text =>  %[<%=  tab(:question_categories, :label => :question_categories_admin)  %>])