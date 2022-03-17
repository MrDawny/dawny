local ModIDs = {}

local success, err = pcall(function()
    for i,v in pairs(game.Players:GetChildren()) do
        if v.Character
            if table.find(ModIDs,v.UserId) then
                v.Character.Humanoid.DisplayName = "[😎]"..v.DisplayName
            elseif not v.Character.Head:FindFirstChild("OriginalSize") then
                v.Character.Humanoid.DisplayName = "[🤡]"..v.DisplayName
            end
        end
    end
end)
return ModIDs
