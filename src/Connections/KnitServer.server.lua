local ServerStorage = game:GetService("ServerStorage")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Knit = require(ReplicatedStorage.Packages.Knit)

for _,v in ipairs(ServerStorage.Modules:GetDescendants()) do
    if (v:IsA("ModuleScript") and v.Name:match("Service$")) then
        require(v)
    end
end

Knit.Start():catch(warn)