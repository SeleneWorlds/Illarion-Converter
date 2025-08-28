local Grid = require("selene.grid")

local m = {}

m.North = Grid.DefineDirection("north", 0, -1, 0, 0)
m.South = Grid.DefineDirection("south", 0, 1, 0, 180)
m.East = Grid.DefineDirection("east", 1, 0, 0, 90)
m.West = Grid.DefineDirection("west", -1, 0, 0, 270)
m.NorthEast = Grid.DefineDirection("northeast", 1, -1, 0, 45)
m.NorthWest = Grid.DefineDirection("northwest", -1, -1, 0, 135)
m.SouthEast = Grid.DefineDirection("southeast", 1, 1, 0, 225)
m.SouthWest = Grid.DefineDirection("southwest", -1, 1, 0, 315)

return m