class Main
	def initialize()
		while true
			print("#{Dir.pwd}>")
			cmd = gets.chomp.downcase
			if cmd[0..1] == "cd"
				self.cd(cmd[3..cmd.length - 1])
			elsif cmd[0..4] == "clear"
				system("cls")
			elsif cmd[0..3] == "echo" && cmd.length > 5
				puts(cmd[4..cmd.length - 1])
			elsif cmd == "exit"
				break
			else
				puts("El comando #{cmd} es reconocido por el sistema")
			end
		end
	end
	def cd(dir)
		begin
			Dir.chdir(dir)
		rescue
			puts("El sistema no ha encontrado el directorio #{dir}")
		end
	end
end
inicio = Main.new()