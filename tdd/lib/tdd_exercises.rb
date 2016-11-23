
require 'byebug'

class Array

  def my_uniq
    uniq = []

    self.each do |el|
      uniq << el unless uniq.include?(el)
    end

    uniq
  end

  def two_sum
    pairs = []

    idx = 0

    while idx < length
      idx2 = idx + 1

      while idx2 < length
        if self[idx] + self[idx2] == 0
          pairs << [idx, idx2] unless pairs.include?([idx, idx2])
        end

        idx2 += 1
      end

      idx += 1
    end

    pairs
  end

end

def my_transpose(matrix)
  transposed_matrix = []

  matrix.each_with_index do |row, idx|
    columns = []
    row.each_index do |idx2|
      columns << matrix[idx2][idx]
    end

    transposed_matrix << columns
  end

  transposed_matrix
end

def stock_picker(array)
  most_profitable_days = nil
  biggest_diff = 0

  array.each_with_index do |el1, idx1|
    array.each_with_index do |el2, idx2|
      if idx2 > idx1
        current_diff = el2 - el1
        if current_diff > biggest_diff
          most_profitable_days = [idx1, idx2]
          biggest_diff = current_diff
        end
      end
    end
  end

  most_profitable_days
end
