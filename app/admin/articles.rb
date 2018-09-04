ActiveAdmin.register Article do
   permit_params :title, :text, comments_attributes: [:id, :body, :_destroy] 
   config.comments = false	
    sidebar "Comments", only: [:show, :edit] do
    ul do
      li link_to "Comments",    admin_article_comments_path(resource)
     # li link_to "Milestones", admin_project_milestones_path(resource)
    end
  end
 

   # /admin/posts/:id/comments
  member_action :comments do
    @comments = resource.comments
    # This will render app/views/admin/posts/comments.html.erb
    abort 'ko'
  end

  form do |f|
    f.inputs 'Details' do
      f.input :title
      f.input :text
    end
  
    f.inputs do
      f.has_many :comments, heading: 'Themes',
                              allow_destroy: true,
                              new_record: false do |a|
        a.input :body
      end
    end
    f.actions
  end

end
