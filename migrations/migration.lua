local _name = "Artillery-Wagon-Mk2"
for _, force in pairs(game.forces) do 
    local technologies = force.technologies
    local recipies = force.recipes
    recipes[_name].enabled = technologies["power-armor-mk2"].researched
end 