local config = {
    {
        ["name"] = "yourbotname", 
        ["password"] = "yourbotpassword",
        ["world"] = "yourworldname"
    },
}

itemid = 5666
posX = 0
posY = -2
delayplace = 120
delaypunch = 180

function pnb()
  collect(1)
  if findItem(itemid) > 0 then
    place(itemid, posX, posY)
    sleep(delayplace)
    while getTile(math.floor(getBot().x / 32) + posX, math.floor(getBot().y / 32) + posY).fg ~= 0 do
      punch(posX, posY)
      sleep(delaypunch)
    end
  end
end

collectSet(true, 1)
while true do
  pnb()
end
