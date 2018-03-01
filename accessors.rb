class HelloWorld
	# 存取器（读取或设置实例变量）
	attr_accessor :name 
	# 类方法（只可以供类本身调用）
	class << self # (此形式可用于定义单例类)
		def hello(name)
			puts "#{name} said hello."
		end
	end
	# 类方法（只可以供类本身调用）
	def HelloWorld.hello_again(name)
			puts "#{name} said hello again."
		end
	# 实例方法（供实例调用）
	def initialize
		@name
	end
	# 手动书写读取实例变量方法
	# def name # 获取@name
	# 	@name
	# end
	# 手动书写设置实例变量方法（下同）
	# def name=(value) # 修改@name
	# 	@name = value
	# end
	# def name1(value) # 修改@name
	# 	@name = value
	# end
	def greet
		puts self.class.class
		puts "Hi, I am #{self.name}."
	end
end

hw = HelloWorld.new()
puts hw.name
hw.name = 'ruby'
# hw.name1('ruby')
puts hw.name
hw.greet
HelloWorld.hello("foo")
HelloWorld.hello_again("bar")