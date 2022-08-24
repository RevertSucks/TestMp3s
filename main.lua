local response = syn.request({
    Url = _G.providedurl,
    Method = "GET"
})
local folder = makefolder("Audio Writer")
local body = ""


for i,v in pairs(response) do
    if type(v) == "table" then
        for i2,v2 in pairs(v) do
            if string.find(v2,"filename") then
                _G.filename = v2:gsub("^(.-)/","")
            end
        end
    end
    if i == "Body" then
        body = v
    end
end

wait()
local audioPath = "Exxen/".._G.filename
writefile(audioPath,body)
wait()
if isfile(audioPath) then 
    local audioPath = getsynasset(audioPath)
    setclipboard(audioPath)
    local audioinst = Instance.new("Sound")
    audioinst.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
    audioinst.SoundId = audioPath
    audioinst:Play()
end
