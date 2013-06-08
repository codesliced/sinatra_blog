get '/posts/author/:username' do 
  @posts_by_author = Post.find_all_by_author(params[:username])
  erb :author
end
