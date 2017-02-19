# Program to Solve Tower-of-Hanoi Problem using Recursion
# The minimum number of moves required to solve a Tower of Hanoi puzzle is 2n – 1

def tower_of_hanoi(n, fromtower, totower, auxtower)
  if n > 1
    tower_of_hanoi(n - 1, fromtower, auxtower, totower)
    puts "Move disk #{n} from #{fromtower} to #{totower}"
    tower_of_hanoi(n - 1, auxtower, totower, fromtower)
  else
    puts "Move disk 1 from #{fromtower} to #{totower}"
    return
  end
end

puts("Enter number of disk")
n = gets.chomp.to_i
tower_of_hanoi(n, "A", "B", "C")