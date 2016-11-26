/// GenerateEnemyFromJson(jsonFile)
var JsonFile = argument0;

var DefaultList = ds_map_find_value(JsonFile, "default");

var WidthMiniBrick = sprite_get_width(sMiniBrickGlass);
var HeightMiniBrick = sprite_get_height(sMiniBrickGlass);

var WidthBrick = sprite_get_width(sBrickGlass);
var HeightBrick = sprite_get_height(sBrickGlass);

for(var i = 0; i < 1; i++)
{
    var JsonObj = ds_list_find_value(DefaultList, i);
    var CountTilesX = JsonObj[? "width"];
    var CountTilesY = JsonObj[? "height"];
    
    var Width = CountTilesX * WidthMiniBrick;   
    var Height = CountTilesY * HeightMiniBrick;
    
    var CurrentX = (Width / 2) * -1;
    var CurrentY = (Height / 2) * -1;
    
    var WidthCount = 1;
    var HeightCount = 1;
    
    var EnemyMap = JsonObj[? "map"];
    var Size = ds_list_size(EnemyMap);
    for(var j = 0; j < Size; j++)
    {
        var Tile = ds_list_find_value(EnemyMap, j);
        switch (Tile)
        {
            case EnumJellyfishBricks.MiniGlass:
                CreateBrick(CurrentX, CurrentY, oMiniGlassBrick, id);
                break;
            case EnumJellyfishBricks.MiniGreen:
                CreateBrick(CurrentX, CurrentY, oMiniGreenBrick, id);
                break;
            case EnumJellyfishBricks.MiniMetal:
                CreateBrick(CurrentX, CurrentY, oMiniMetalBrick, id);
                break;
            case EnumJellyfishBricks.MiniPurple:
                CreateBrick(CurrentX, CurrentY, oMiniPurpleBrick, id);
                break;
            case EnumJellyfishBricks.Heart:
                CreateBrick((CurrentX) + WidthMiniBrick / 2, CurrentY, oHeartBrick, id);
                break;
        }
        CurrentX += WidthMiniBrick;
        WidthCount++;
        
        // If the line of the map has ended
        if WidthCount > CountTilesX
        {
            WidthCount = 1;
            CurrentX = (Width / 2) * -1;
            CurrentY += HeightMiniBrick;
            HeightCount++;
        }
    }
    ds_list_destroy(Tile);
}

ds_list_destroy(DefaultList);
