# Write your code here.

def line(katz_deli)
  if katz_deli == []
    puts "The line is currently empty."
  else
    arr_of_names = []
    katz_deli.each_with_index do |name, index|
      arr_of_names[index] = "#{index + 1}. #{name}"
    end
    puts "The line is currently: #{arr_of_names.join(" ")}" 
  end
end

def take_a_number(katz_deli, new_persons_name)
  if katz_deli == []
    katz_deli[0] = new_persons_name
    puts "Welcome, #{new_persons_name}. You are number 1 in line."
  else
    katz_deli.push(new_persons_name)
    position = katz_deli.index(new_persons_name) + 1
    puts "Welcome, #{new_persons_name}. You are number #{position} in line."
  end
end

def now_serving(katz_deli)
  if katz_deli == []
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end
end

