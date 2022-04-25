defmodule Dino.Heros do
  alias Dino.Character

  def all do
    [
      %Character{name: "铃兰公主", description: "角龙人，会水魔法"},
      %Character{name: "杨歌", description: "地球人，携带口袋爸爸"},
      %Character{name: "口袋爸爸", description: "地球人，可以装进杨歌的口袋"}
    ]
  end
end
