local Class = loadstring(game:HttpGet("https://github.com/FlamesW/FunctionManager/releases/latest/download/Module.luau"))();
local Script = Class.Launch({});

local Attacked = false

Script:WhileLoop(0.015, function(self)
    local Animations = self:DetectAnim(self.LocalPlayer)
    
    local IsAttacking = false
    
    for _, Anim in ipairs(Animations) do
        if Anim.AssetName == "AttackAnimation" then
            IsAttacking = true
            break
        end
    end

    if IsAttacking and not Attacked then
        print("🛡 Parry!")
    end
    
    Attacked = IsAttacking
end, "AutoParry")
