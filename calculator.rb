require 'sinatra'

# Home Page
get '/' do
  erb :index
end

# Perform Calculation
post '/calculate' do
  num1 = params[:num1].to_f
  num2 = params[:num2].to_f
  operation = params[:operation]

  result = case operation
           when "add" then num1 + num2
           when "subtract" then num1 - num2
           when "multiply" then num1 * num2
           when "divide" then num2.zero? ? "Cannot divide by zero" : num1 / num2
           else "Invalid operation"
           end

  "Result: #{result}"
end
