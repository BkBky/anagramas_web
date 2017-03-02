#https://code.tutsplus.com/tutorials/singing-with-sinatra--net-18965
#This is a 'Route'. Here, we're telling Sinatra that if the home, or root, URL '/' is requested, using the normal GET HTTP method, to display "el view/index.erb "
#ERB means 

#(Embedded Ruby)
get '/' do
  erb :index
end

#accessing to url parameters
#paso2
get '/:new_word' do
	#Aquí recibí el input del usuario
  @new_word = params[:new_word]
  
  #Manda a llamar al metodo Word.all_anagrams y le pasa el input del usuario
  #paso3 
  @new_array_canonicals = Word.all_anagrams(@new_word)
  # the url parameters are showing on views/word.erb
  #paso 7
  erb :word
  
end

#This mean if the '/new_word' URL is requested (using the POST HTTP method), redirection to "get '/:new_word' do"
#paso1
post '/new_word' do
  new_word = params[:new_word]
  #redirect to ("/#{params[:user_word]}")
  redirect to ("/#{new_word}")
end                 