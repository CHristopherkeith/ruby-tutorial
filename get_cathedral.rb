require "open-uri"
require "nkf"
url = "http://cruel.org/freeware/cathedral.html"
filename = "cathedral.html"
File.open(filename, "w") do |f|
	text = open(url).read
	f.write text # UTF-8 环境下使用此段代码
	#f.write NKF.nkf("-s", text) # Shift_JIS 环境下（日语Windows）使用此段代码
end