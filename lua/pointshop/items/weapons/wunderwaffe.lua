ITEM.Name = 'Wunderwaffe DG-2'
ITEM.Price = 500
ITEM.Model = 'models/wunderwaffe.mdl'
ITEM.WeaponClass = 'weapon_jb_teslagun'
ITEM.AmmoType = 'AR2AltFire'
ITEM.Ammo = 18
ITEM.Team = 2
ITEM.Description = "This item only functions as a Guard.\nThe Wunderwaffe DG-2 instantly kills\nanyone at a short range, but long range\nshots will deal less damage.\nPunt rating: 1\nWeapon was created by Crudcakes."

function ITEM:OnEquip(ply)
    ply:SetNWString("guardweapon",self.WeaponClass)
    ply:SetNWInt("guardammo",self.Ammo)
    ply:SetNWString("guardammotype",self.AmmoType)
	if ply:Alive() and ply:Team() == self.Team then
		ply:Give(self.WeaponClass)
	    ply:SelectWeapon(self.WeaponClass)
	    ply:GiveAmmo( self.Ammo, self.AmmoType, true )
	end 
end

function ITEM:OnHolster(ply)
    ply:SetNWString("guardweapon",nil)
    ply:SetNWInt("guardammo",nil)
    ply:SetNWInt("guardammotype",nil)
    if ply:Alive() and ply:Team() == self.Team then
		ply:StripWeapon(self.WeaponClass)
	end 
end