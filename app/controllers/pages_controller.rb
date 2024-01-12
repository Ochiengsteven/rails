class PagesController < ApplicationController
  def hello
    @greetings = ["Hello", "Bonjour", "Hola", "Ciao"]
    @answer = 6 + 8
  end
end
