defmodule Dino.CLI.Main do
  alias Mix.Shell.IO, as: Shell

  def start_game do
    welcome_message()
    Shell.prompt("按回车键开始")
    hero_choice()
  end

  defp welcome_message do
    Shell.info("==欢迎来到恐龙星球！==")
    Shell.info("这里有各种恐龙，非常刺激又危险。")
    Shell.info("想开始你的旅程吗？")
  end

  def hero_choice() do
    Dino.CLI.HeroChoice.start()
  end
end
