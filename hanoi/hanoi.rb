input = Array.new

# get the initial input which is 3 lines of integers
3.times do 
  line = gets
  input.push(line)
end

# the first line contains the number of discs and pegs
nk = input[0].split
disc_nums = nk[0].to_i
keg_nums  = nk[1].to_i

# the second line contains the initial configuration. 

discs = Array.new

input[1].split.each do |f| 
  discs.push(f)
end

# creating a way to retrieve disc radius
disc_radius = Hash.new
i = 0
discs.each do |f|
  print f
  disc_radius[i] = f
  i = i+1
end
puts " reversed "

# create the required stacks

table = Array.new

counter = 1
keg_nums.times do 
  table[counter] = Array.new
  counter = counter + 1
end


# reversing it as we want to put the bigger discs at the bottom
discs.reverse!

counter = disc_nums
discs.each do |f|
  f = f.to_i
  table[f].push(counter)
  counter = counter - 1
end








