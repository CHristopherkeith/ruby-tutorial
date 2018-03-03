# Ruby 采用的是不允许多个父类的单一继承模型，但是通过利用 Mix-in，我们就既可以保持单一继承的关系，又可以同时让多个类共享其他功能。
module M
	def meth
		"meth"
	end
end

class C
	include M # 包含M 模块
end

c = C.new
puts c.meth #=> meth

p C.ancestors # [C, M, Object, Kernel, BasicObject]
p C.superclass # Object
# p Hash.ancestors
