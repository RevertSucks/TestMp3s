local response = syn.request({
    Url = _G.providedurl,
    Method = "GET"
})
local folder = makefolder("Audio Writer")


for i,v in pairs(response) do
    if type(v) == "table" then
        for i2,v2 in pairs(v) do
            if string.find(v2,"filename") then
                _G.filename = v2:gsub("^(.-)=","")
            end
        end
    end
    if i == "Body" and _G.filename ~= nil then
        writefile("Exxen/".._G.filename,v)
    end
end
