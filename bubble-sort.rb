#!/usr/bin/env ruby
#
# bubble-sort.rb
# 20170209 GH
#

def bubble_sort(array,num_to_sort=array.length, num_passes=0)

	p array if num_passes == 0

	if num_to_sort > 1

		# For reporting how many passes it took to sort
		num_passes += 1

		# When true sorting is done
		swap = false

		for i in 0..num_to_sort - 1

			array[i..i+1] = array[i..i+1].sort do |left, right| 

				compare = left <=> right
				swap ||= (compare == 1) 
				compare

			end

	  end
	
		# Do we have more sorting to do or not
	  if swap
			bubble_sort(array,num_to_sort - 1, num_passes)
		else
			puts "==> #{array} sorted in #{num_passes} passes\n\n"
		end

	else
		 puts "==> #{array} sorted in #{num_passes} passes\n\n"
	end
		
end

bubble_sort([9,5,4,3,2])
bubble_sort([3,4,7,1,4,9,4,1])
bubble_sort([1,2,3])
bubble_sort([3,2,1,7,8,9,10])

