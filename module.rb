module HelloModule # module 关键字
	Version = "1.0" # 定义常量

	def hello(name) # 定义方法
		puts self
		puts "Hello, #{name}."
	end

	# 模块方法1
	module_function :hello # 指定hello 方法为模块函数

	# 模块方法2
	# def HelloModule.hello(name) # 定义方法
	# 	puts "Hello, #{name}."
	# end

	# 模块方法3
	# class << self
	# 	def hello(name) # 定义方法
	# 		puts self
	# 		puts "Hello, #{name}."
	# 	end
	# end
end

puts HelloModule::Version
puts HelloModule::hello("haha")

# include把模块include到当前的（main）命名空间
# include HelloModule
# puts self # self为main
# puts self.methods 
# self.hello("haha") # 提示hello为私有方法
# self.send("hello", "haha")
# self.send("hello", "haha") # 通过send可成功调用