ITEM.Name = 'Weapon Punt'
ITEM.Price = 500
ITEM.Model = 'models/items/boxsrounds.mdl'
ITEM.Description = "Shooting will punt you backwards, use wisely!\nActivated once your clip has reached half it's amount.\nCons: Your clip size is halved after reloading."
ITEM.NoPreview = true

function ITEM:OnEquip(ply, modifications)
	ply:SetNWString("powerup","gunpunt")
end

function ITEM:OnHolster(ply)
	ply:SetNWString("powerup","")
end