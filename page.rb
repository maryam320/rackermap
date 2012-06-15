
load '~/Desktop/html/mydatabase.rb'
load '~/Desktop/html/rubycodes.rb'

@iarray=[]
@interns.each_hash do |i|
	@iarray << Intern.new(i['ID'],i['First_name'],i['Last_name'],i['School'],i['Grade_level'])
end
File.open('newpage.html','w+') do |file|
	file.puts "<html><body><div><h3>Kool Interns File</h3></div><br/>"
	file.puts "<span>lets see if this works</span>"
	file.puts "<table border='2'><tr>"
	@iarray.each do |intern|
		file.puts "<td>#{intern.key}</td>"
		file.puts "<td>#{intern.first_name}</td>"
		file.puts "<td>#{intern.last_name}</td>"
		
	end
	file.puts "</tr></table></body></html>"

end 
