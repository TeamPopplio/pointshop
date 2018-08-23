ITEM.Name = 'Killstreak Kit'
ITEM.Price = 100
ITEM.Model = 'models/player/items/mvm_loot/all_class/mvm_flask_generic.mdl'
ITEM.Description = "Adds killstreak properties"
ITEM.NoPreview = true

function ITEM:OnEquip(ply, modifications)
	ply:SetNWInt("killstreakkit",1)
    ply:SetNWInt("killstreak",0)
end

function ITEM:OnHolster(ply)
	ply:SetNWInt("killstreakkit",0)
    ply:SetNWInt("killstreak",0)
end