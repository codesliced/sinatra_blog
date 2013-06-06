get '/tags' do
  @tags = Tag.all
  erb :tagcloud  
end
