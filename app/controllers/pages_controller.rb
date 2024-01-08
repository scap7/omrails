class PagesController < ApplicationController
  def home
    @title_text="hello world!"
    @subtitle_text= "I am learning rails!!"
  end
end
