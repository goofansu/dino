defmodule Dino.Character do
  alias Mix.Shell.IO, as: Shell

  defstruct name: nil,
            description: nil

  def attack(%__MODULE__{} = attacker, %__MODULE__{} = target) do
    IO.puts "#{attacker.name} 正在攻击 #{target.name}..."
  end

  def inspect(target) do
    Shell.info("是否使用1个恐龙币查看#{target}信息吗？")
    Shell.prompt("按回车键开始")
    IO.puts("#{target} 是个超级大#{target}")
  end
end
