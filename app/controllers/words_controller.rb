
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

get '/words/:id/edit' do
  # find the word using params[:id]
  # and set it to the @word variable
  @word = Word.find(params[:id])
  erb :"/words/edit"
end

put '/words/:id' do
  # find the word using params[:id]
  # and set it to the @word variable.
  # Then update the @word's text attribute
  # with params[:text]
  @word = Word.find(params[:id])
  @word.text = params[:text]
  @word.letters = params[:letters]
  @word.save
  erb :"/words/show"
end
