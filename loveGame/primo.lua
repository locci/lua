function track(t)
	
	if type(t.x) ~= "number" then
		
		print("invalid 'x' value")
		
	end
	
	if type(t.y) ~= "number" then
		
		print("invalid 'y' value")
		
	end
	
end

t1 = track{ x = "A", y = 25.9, title = "depth" }

print(t1)

msg = "he said \"bye\" and go"
print(msg)

print("Digite um numero")

num = io.read()

print(num)

--Erro
--text = io.read("texto")
--print(text)
