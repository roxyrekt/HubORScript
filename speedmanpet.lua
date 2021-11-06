local args = {
    [1] = {
        ["1"] = {
            ["Cost"] = "0",
            ["Evolution"] = getgenv().Evolution,
            ["Function"] = "Pet",
            ["StatName"] = "Energy",
            ["PetName"] = getgenv().PetName
        }
    },
    [2] = "1"
}

game:GetService("ReplicatedStorage").Remotes.BuyTrophy:FireServer(unpack(args))
