hash1={"Brodady"=>10,"Marakar"=>15,"Kurup"=>20,"Minnal Murali"=>7}

puts("......WELCOME TO THEATRE......")

c="y"
while c == "y"
    puts("List of films running:")
    a = hash1.keys()
    hash1.each {|k,v| puts "#{k}:#{v}" }

    puts("Select the film?")
    f=gets.chomp()
    if hash1.key? (f)
        puts("***PRICE OF 1 TICKET 100 RUPEES***")
        puts("No: of tickets you want: ")
        t = gets.chomp.to_i()
        if hash1[f] == 0
            puts("NO TICKETS AVAILABLE")
            puts("....COUNTER CLOSED.... ")
        elsif hash1[f]<t
            puts("We have only #{hash1[f]} tickets")
        else
              hash1[f]=hash1[f]-t
              puts(hash1)
              puts(".........Bill.........")
              p = t * 100
              print(f + "=", 100, "*", t, "=", p )
        end
    else
        puts("No film")
    end

    puts("\nTO CONTINUE PRESS 'y' :" )
    c=gets.chomp()
end
