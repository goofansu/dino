defmodule Dino.CLI.HeroChoice do
  alias Mix.Shell.IO, as: Shell

  def start do
    Shell.cmd("clear")
    Shell.info("选择你的游戏角色吧？")

    heros = Dino.Heros.all()
    find_hero_by_index = &Enum.at(heros, &1)

    heros
    |> Enum.map(& &1.name)
    |> display_options()
    |> generate_question()
    |> Shell.prompt()
    |> parse_answer()
    |> find_hero_by_index.()
    |> confirm_hero
  end

  defp display_options(names) do
    names
    |> Enum.with_index(1)
    |> Enum.each(fn {name, index} -> Shell.info("#{index} - #{name}") end)

    names
  end

  defp generate_question(names) do
    options = Enum.join(1..Enum.count(names), ", ")
    "选择哪个角色？（请输入编号）[#{options}]\n"
  end

  defp parse_answer(answer) do
    {option, _} = Integer.parse(answer)
    option - 1
  end

  defp confirm_hero(chosen_hero) do
    Shell.info(chosen_hero.description)
    if Shell.yes?("确定选择#{chosen_hero.name}吗?"), do: chosen_hero, else: start()
  end
end
