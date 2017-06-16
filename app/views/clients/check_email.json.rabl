if @clients.nil?
	node("message"){"Available"}
else
	node("message"){"This email is already taken"}
end