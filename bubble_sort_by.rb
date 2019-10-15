# frozen_string_literal: true

def bubble_sort_by(arr)
  if block_given?
    swap = false
    while swap != true
      swap = true
      for i in 0..(arr.length - 2) do
        if (yield(arr[i], arr[i+1]) > 0) 
          arr[i], arr[i+1] = arr[i+1], arr[i]
          swap = false
        end
      end
    end
  else
    raise "No block given" unless block_given?
  end
  puts "------------"
  output = arr.join(", ")
  puts "[#{output}]"
end

#given test :)
bubble_sort_by(["hey", "hello", "hi"]) {|left, right| left.length - right.length}