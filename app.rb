require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    rev_name = params[:name].reverse
    "#{rev_name}"
  end

  get '/square/:number' do
    n = params[:number].to_i
    sq = n * n

    "#{sq}"
  end

  get '/say/:number/:phrase' do
    n = params[:number].to_i
    arr = []
    n.times { arr << params[:phrase] }

    arr.each {|str| "#{str}"}
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
   n1 = params[:word1]
   n2 = params[:word2]
   n3 = params[:word3]
   n4 = params[:word4]
   n5 = params[:word5]

   arr = [n1, n2, n3, n4, n5]

   "#{arr.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    op = params[:operation]
    n1 = params[:number1].to_i
    n2 = params[:number2].to_i

    if op == 'add'
      add = n1 + n2
      "#{add}"
    elsif op == 'subtract'
      sub = n1 - n2
      "#{sub}"
    elsif op == 'multiply'
      mult = n1 * n2
      "#{mult}"
    elsif op == 'divide'
      div = n1 / n2
      "#{div}"
    end
  end
end
