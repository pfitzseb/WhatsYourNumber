module WhatsYourNumber

using Genie, Logging, LoggingExtras

function main()
  Core.eval(Main, :(const UserApp = $(@__MODULE__)))
  @warn "main() env" env=Base.ENV
  
  foreach((args...) -> println(args...), Base.ENV)
  
  Genie.genie(; context = @__MODULE__)

  Core.eval(Main, :(const Genie = UserApp.Genie))
  Core.eval(Main, :(using Genie))
end

end
