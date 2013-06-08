get '/posts/author/:username' do 
  @author = Post.find_by_author(params[:username])
  @posts_by_author = @author.posts
  erb :author
end
