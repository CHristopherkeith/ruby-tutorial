class AccTest
	# public # 不指定参数时，
	# 以下的方法都被定义为public
	def pub
		puts "pub is a public method."
	end

	private # 以下的方法都被定义为private

	def priv
		puts "priv is a private method."
	end
end

acc1 = AccTest.new()
acc1.pub()
acc1.priv()
# acc2 = AccTest.new()