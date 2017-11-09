require 'rb-readline'
def RbReadline.rl_reverse_search_history(sign, key)
 rl_insert_text  `cat ~/.pry_history | fzf --tac |  tr '\n' ' '`
end

# Hit Enter to repeat last command
Pry::Commands.command /^$/, "repeat last command" do
  _pry_.run_command Pry.history.to_a.last
end
