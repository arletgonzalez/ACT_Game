require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/check_answer' do
    science_1=params[:science_1]
    science_2=params[:science_2]
    math_1=params[:math_1]
    math_2=params[:math_2]
    math_3=params[:math_3]
    math_4=params[:math_4]
    math_5=params[:math_5]
    res=[science_1, science_2, math_1, math_2, math_3, math_4, math_5]
    @result=check_answer(res)
    erb :results
    end
end