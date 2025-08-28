local m = {}

function m.transformBytes(bytes)
    local result = {}
    local i = 1
    
    while i <= #bytes do
        local byte = bytes[i]
        local originalByte = byte
        
        -- Handle signed bytes: convert negative values to unsigned
        if byte < 0 then
            byte = byte + 256
        end
        
        if byte < 128 then
            -- ASCII characters (0-127) are identical in both encodings
            table.insert(result, originalByte)
        else
            -- Characters 128-255: convert ISO-8859-1 to UTF-8
            -- ISO-8859-1 maps directly to Unicode code points
            -- UTF-8 encoding for characters 128-255:
            if byte < 192 then
                -- Characters 128-191: 0xC2 + original byte
                table.insert(result, 0xC2)
                table.insert(result, originalByte)
            else
                -- Characters 192-255: 0xC3 + (original byte - 64)
                table.insert(result, 0xC3)
                table.insert(result, originalByte - 64)
            end
        end
        
        i = i + 1
    end
    
    return result
end

return m