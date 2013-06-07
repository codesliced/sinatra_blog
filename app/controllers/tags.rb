get '/tags' do
  @tags = Tag.all
  erb :tagcloud  
end

get '/tag/:id' do
  @tag = Tag.find(params[:id])
  erb :tagged
end
