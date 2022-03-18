local ModIDs = {
2824112481, --Dawny_GemsHelper17, owner acc 1
2809412520, --remorse?
}

local success, err = pcall(function()
    for i,v in pairs(game.Players:GetChildren()) do
        if v.Character then
            if table.find(ModIDs,v.UserId) then
                v.Character.Humanoid.DisplayName = "[😎]"..v.DisplayName
            elseif not v.Character.Head:FindFirstChild("OriginalSize") then
                v.Character.Humanoid.DisplayName = "[🤡]"..v.DisplayName
            end
        end
    end
end)
return ModIDs
