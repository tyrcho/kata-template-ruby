# https://web.archive.org/web/20090327105016/http://weblog.raganwald.com/2007/11/really-useful-anamorphisms-in-ruby.html

class Object
  # unfold takes a "seed" argument and a incrementor. It returns an array. The first element of the array is the
  # seed, every subsequentelement is the result of applying the incrementor to the previous element.
  # so in pretentious quasi-math: result[n] = incrementor(result[n-1]).
  # the array ends when the incrementor returns nil, so unfold(0) { |n| n+1 } is a bad idea in Ruby
  # to add terminating conditions, use if not logic, because false does not terminate unfold.
  #
  # example: 10.unfold { |n| n-1 unless n == 1 }.inspect => [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
  # example: 10.class.unfold(&:superclass).inspect => [Fixnum, Integer, Numeric, Object] # using Symbol#to_proc
  #
  # See also: NilClass#unfold
  def unfold(&incrementor)
    incrementor.call(self).unfold(&incrementor).unshift(self)
  end
end

class NilClass
  # See: Object#unfold
  def unfold(&incrementor)
    []
  end
end
