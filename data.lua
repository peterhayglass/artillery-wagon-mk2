local _name = "Artillery-Wagon-Mk2"

local _grid = table.deepcopy(data.raw["equipment-grid"]["large-equipment-grid"])
_grid.name = _name
_grid.width = 10
_grid.height = 10
if mods["Battle_Wagons"] then
    _grid.equipment_categories =  {"Battle-Laser", "armor"}
else 
    _grid.equipment_categories =  {"armor"}
end

local _entity = table.deepcopy(data.raw["artillery-wagon"]["artillery-wagon"])
_entity.name = _name
_entity.max_health = 2000
-- _entity.weight = 
-- _entity.max_speed = 
_entity.equipment_grid = _name
_entity.minable.result = _name
_entity.resistances = table.deepcopy(data.raw["armor"]["power-armor-mk2"].resistances)


local _item = table.deepcopy(data.raw["item-with-entity-data"]["artillery-wagon"])
_item.name = _name
_item.place_result = _name


local _recipe = table.deepcopy(data.raw["recipe"]["artillery-wagon"])
_recipe.name = _name
_recipe.ingredients = {{"artillery-wagon", 1}, {"power-armor-mk2", 1}}
_recipe.result = _name

data:extend{_grid}
data:extend{_entity, _item, _recipe}
table.insert(data.raw["technology"]["power-armor-mk2"].effects, {type = "unlock-recipe", recipe = _name})