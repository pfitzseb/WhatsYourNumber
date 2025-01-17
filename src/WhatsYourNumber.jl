module WhatsYourNumber

using Genie, Logging, LoggingExtras

function main()
  Core.eval(Main, :(const UserApp = $(@__MODULE__)))
  
  println("Base ENV:")
  foreach((args...) -> println(args...), Base.ENV)
  
  println("Main ENV:")
  foreach((args...) -> println(args...), Main.ENV)
  
  println("ENV:")
  foreach((args...) -> println(args...), ENV)
  
  Genie.genie(; context = @__MODULE__)

  Core.eval(Main, :(const Genie = UserApp.Genie))
  Core.eval(Main, :(using Genie))
end

end
