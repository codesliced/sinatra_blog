get '/posts' do
  erb :create_posts
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


get '/edit/:id' do
  @post = Post.find(params[:id])

  erb :form_for_editing
  
end

post '/edit/:id' do
  @post = Post.find(params[:id])
  @post.update_attributes(params[:post])

  redirect "/single/#{@post.id}"
end
