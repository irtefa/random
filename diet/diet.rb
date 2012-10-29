n = gets.to_i
sum = Hash.new
food = Hash.new

n.times do 
  line = gets 
  a, b = line.split
  food[b.to_i] = a
end

foods = [] # putting all the calories in an array
food.each do |key,val|
  foods.push(key)
end

foods.each do |i|
  break if sum.has_key?(0) # return if it already has a solution
  tum = Hash.new
  tum[i] = [i] unless sum.has_key?(i)

  sum.each do |key,val|
    new_sum = key + i
    tum[new_sum] = [i] + val
  end
  tum.each do |key, val|
    sum[key] = val unless sum.has_key?(key)
  end
  tum.clear
end
#=begin
# this is for printing all the sums and the corresponding numbers  
sum.each do |key,val|
 puts "#{key} = #{val}"
end
#=end

if sum[0].nil? 
  p "no solution"
else
  sum[0].each do |i|
    puts "#{ food[i]}"
  end
end


  


