get '/' do
  erb :index
end

get '/anagrams/:word' do
  @word = params[:word]
  @anagrams = Word.find_anagrams(@word)
  erb :show
end

post '/' do
  @word = params[:word]
  redirect "/anagrams/#{@word}"
  if Word.valid_word(@word)
    anagram_array = Person.get_birth_path_num(birthdate)
    redirect "/anagram/#{word}"
  else
    @error = "You should enter a valid word containing only 3 letters."
    erb :form
  end

end
