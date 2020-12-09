require 'net/http'
require 'nokogiri'

https = Net::HTTP.new('dolarhoje.com', 443)  #url https 

https.use_ssl = true

response = https.get("/") #end-point '/' ou seja rota raiz


doc = Nokogiri::HTML(response.body) #concatenar a url com o end-point e retornar a estrutura html (body)

# h1 = doc.('')

# puts h1.content

# response.code

# response.message 

doc.search('#cotacao span  input').each do |a|  #forEach para pegar todos value dos inputs que está dentro da div#cotacao e span
  puts a.attributes['value']
end  # está sendo retornado o dollar e o real



# puts doc
