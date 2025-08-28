local m = {}

function m.transformText(text)
    return text:gsub(" 1then", " 1 then")
end

return m