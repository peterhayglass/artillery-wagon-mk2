if mods["Battle_Wagons"] then
    table.insert(data.raw["equipment-grid"]["large-equipment-grid"].equipment_categories, "Battle-Laser")
    table.insert(data.raw["equipment-grid"]["spidertron-equipment-grid"].equipment_categories, "Battle-Laser")
    if mods["RampantArsenal"] then
        table.insert(data.raw["equipment-grid"]["power-armor-mk3-grid-rampant-arsenal"].equipment_categories, "Battle-Laser")
    end
end
