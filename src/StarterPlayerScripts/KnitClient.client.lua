local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Knit = require(ReplicatedStorage.Packages.Knit)

for _,v in ipairs(ReplicatedStorage.Modules:GetDescendants()) do
    if (v:IsA("ModuleScript") and v.Name:match("Controller$")) then
        require(v)
    elseif (v:IsA("Folder") and v.Name == "Components") then
        for _,j in ipairs(v:GetChildren()) do
            if (j:IsA("ModuleScript")) then
                require(j)
            end
        end
    end
end

Knit.Start():catch(warn)