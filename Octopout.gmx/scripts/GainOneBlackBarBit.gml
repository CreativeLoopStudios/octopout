/// GainOneBlackBarBit()
if instance_exists(oBlackBar)
{
    var MarginX = 2;

    var BlackBarX = oBlackBar.x - (oBlackBar.sprite_width / 2);
    var BlackBarY = oBlackBar.y - (oBlackBar.sprite_height / 2);
    
    var BlackBitBarsTotalWidth = sprite_get_width(sBlackBarBit) * instance_number(oBlackBarBit);
    
    instance_create(BlackBarX + BlackBitBarsTotalWidth + MarginX, BlackBarY, oBlackBarBit);
}
