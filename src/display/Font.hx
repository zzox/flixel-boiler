package display;

import data.Constants;
import flixel.graphics.frames.FlxBitmapFont;
import flixel.text.FlxBitmapText;
import openfl.Assets;

function getFont () {
    final textBytes = Assets.getText(AssetPaths.miniset__fnt);
    final XMLData = Xml.parse(textBytes);
    return FlxBitmapFont.fromAngelCode(AssetPaths.miniset__png, XMLData);
}

function makeText (string:String, ?pos:IntPoint):FlxBitmapText {
    if (pos == null) {
        pos = { x: 0, y: 0 };
    }

    final text = new FlxBitmapText(getFont());
    text.text = string;
    // text.letterSpacing = -1;
    text.setPosition(pos.x, pos.y);
    return text;
}
