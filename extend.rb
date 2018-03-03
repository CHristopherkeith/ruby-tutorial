# include 可以帮助我们突破继承的限制，通过模块扩展类的功能；而 extend 则可以帮助我们跨过类，直接通过模块扩展对象的功能。
# extend 扩展类的类方法 include扩展类的实例方法
module Edition
	def edition(n)
		"#{self} #{n}th"
	end
end

class C
	# include Edition 
end

puts C.class
c = C.new()
p c
c.extend(Edition)
p c.edition(4)

# b = C.new()
# # b.extend(Edition)
# p b.edition(4)