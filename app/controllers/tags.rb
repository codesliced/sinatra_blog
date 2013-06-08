get '/tags' do
  @tags = Tag.all
  erb :tagcloud  
end

get '/tag/:id' do
  @tag = Tag.find(params[:id])
  erb :tagged
end

get '/posts/tags/:anna_marie' do 
  @tag = Tag.find_by_tag_name(params[:anna_marie])
  @tagged_posts = @tag.posts
  erb :tagged
end
