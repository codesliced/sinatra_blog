get '/posts' do
  erb :list_of_posts
end

post '/all' do
  @post = Post.create(params[:post])
  @posts = Post.all  
  redirect '/'
end

get '/single/:id' do
  @post = Post.find(params[:id])
  erb :post
end


post '/destroy/:id' do
  @post = Post.find(params[:id])
  @post.destroy
  redirect '/'
end


