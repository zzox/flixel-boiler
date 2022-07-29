package;

import display.Font.makeText;
import flixel.FlxG;
import flixel.FlxState;
import flixel.graphics.frames.FlxBitmapFont;
import flixel.system.scaleModes.PixelPerfectScaleMode;
import flixel.text.FlxBitmapText;
import openfl.Assets;

class PreState extends FlxState {
    override public function create () {
        super.create();

        // PROD: remove
        // requires `-debug` flag
        FlxG.debugger.visible = true;
        FlxG.debugger.drawDebug = true;

        FlxG.mouse.visible = false;
        FlxG.mouse.useSystemCursor = true;

        // options
        // FlxG.autoPause = false;
        // FlxG.sound.muteKeys = null;
        // FlxG.sound.volumeUpKeys = null;
        // FlxG.sound.volumeDownKeys = null;

        camera.pixelPerfectRender = true;
        FlxG.scaleMode = new PixelPerfectScaleMode();

        bgColor = 0xff000000;

        final text = makeText('Click to focus window');
        text.color = 0xffffffff;
        text.setPosition((FlxG.width - text.width) / 2, 60);
        add(text);
    }

    override public function update (elapsed:Float) {
        super.update(elapsed);
        if (FlxG.mouse.justPressed) {
            FlxG.switchState(new PlayState());
        }
    }
}
