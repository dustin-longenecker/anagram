
get '/words' do
  @words = Word.all
  erb :"/words/index"
end

get '/words/new' do
  @word = Word.new
  erb :"/words/new"
end

get '/words/:id' do
  @word = Word.find(params[:id])
  erb :"/words/show"
end



post '/words' do
  @word = Word.create(text: params[:text])
  if !@word.class.nil?
    redirect "/words/#{@word.id}"
  else
    @error = "error"
    erb :"/words/new"
  end
end
