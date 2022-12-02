local door_hashes = {
    -408139633,      -- Bank VALENTINE
    -1652509687,     -- Bank VALENTINE
	2642457609,
	1340831050,
	2343746133,
	334467483,
	3718620420,
	2307914732,
    -1477943109,     -- Bank SAINT DENIS
    2089945615,      -- Bank SAINT DENIS
    -2136681514,     -- Bank SAINT DENIS
    1733501235,      -- Bank SAINT DENIS
    -977211145,      -- Bank RHODES
    -1206757990,     -- Bank RHODES
    531022111,       -- Bank BLACKWATER
    3101287960,      -- Bank ARMADILLO
}
     
Citizen.CreateThread(function()
    for k,v in pairs(door_hashes) do 
        Citizen.InvokeNative(0xD99229FE93B46286,v,1,1,0,0,0,0)
        Citizen.InvokeNative(0x6BAB9442830C7F53,v,0) 
    end
end)

