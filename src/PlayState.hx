package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.system.scaleModes.PixelPerfectScaleMode;

class PlayState extends FlxState {
    override public function create() {
        super.create();

        // PROD: remove this vvv
        // requires `-debug` flag
        FlxG.debugger.visible = true;
        FlxG.debugger.drawDebug = true;

        FlxG.mouse.visible = false;

        camera.pixelPerfectRender = true;
        FlxG.scaleMode = new PixelPerfectScaleMode();
    }

    override public function update(elapsed:Float) {
        super.update(elapsed);
    }
}
