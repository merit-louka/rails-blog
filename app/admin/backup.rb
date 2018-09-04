# show do
# 	  attributes_table do
# 	    row :title
# 	    row :text
# 	    table_for article.comments.order('title ASC') do
# 	      column "Comments" do |comment|
# 	        link_to comment.body
# 	      end
# 	    end
# 	  end
#   end
# controller do
#   def post_params
#       params.require(:article).permit(:title, :text)
#   end 
#   # def create
# 	 #  @article = Article.new(post_params)
	 
# 	 #  if @article.save
# 	 #      redirect_to @article
# 	 #  else
# 	 #     render 'new'
# 	 #  end
#   # end
#   def new
# 	  build_resource
# 	  #Comment.find_each { |comment| resource.comments.build(comment: comment) }
# 	  new!
#   end
# end

 
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

#  before_create do |article|
   # @article = Article.find(params[:article_id])
    #comment_params =  params.require(:comments_attributes).permit( :body)
    #@comment = @article.comments.create(comment_params)
    #article.comments.create(comment_params)
    #product.creator = current_user
#  end