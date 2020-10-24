package;

import flixel.FlxState;

class PlayState extends FlxState {
	override public function create() {
		super.create();

		FlxG.mouse.visible = false;

		// camera.pixelPerfectRender = true;
		// remove vvv when going live
		FlxG.scaleMode = new PixelPerfectScaleMode();

		camera.followLerp = 0.5;

		// bgColor = 0xff8b9bb4;
	}

	override public function update(elapsed:Float) {
		super.update(elapsed);
	}
}
