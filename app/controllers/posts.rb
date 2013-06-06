get '/posts' do
  @posts = Post.all
  erb :list_of_posts
end


post '/all' do

  # p params.inspect
  Post.create(
    title: params[:post][:title],
    content: params[:post][:content],
    author: params[:post][:author])
  @posts = Post.all  
  redirect '/'
end


post '/create_post' do
  @post = Post.create(params[:post])
  erb :post
end
