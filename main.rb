# Virtual assistant program, made by knnav
# todo: make this less hacky an not a script
require_relative 'src/response'
def main
  puts "Hola Kurt! soy la primera version de tu asistente virtual,\n por ahora no puedo hacer mucho pero pronto podras preguntarme muchas cosas!"
  Response.new("Test name", "Test response message").print
end

main
