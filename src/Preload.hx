import flixel.system.FlxBasePreloader;
import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.display.Sprite;

@:bitmap('assets/images/haxeflixel-icon.png') class LogoImage extends BitmapData {}

class Preload extends FlxBasePreloader {
    var bar:Bitmap;

    public function new () {
        super(3);
    }

    override public function create () {
        super.create();

        final buffer = new Sprite();
        bar = new Bitmap(new BitmapData(1, 1, false, 0x9badb7));
        bar.y = 100;
        buffer.addChild(bar);

        final logo = new Sprite();
        logo.addChild(new Bitmap(new LogoImage(16, 16)));
        logo.x = 112;
        logo.y = 60;
        addChild(logo);
        addChild(buffer);
    }

    override public function update (percent:Float) {
        bar.scaleX = Math.floor(percent * 240);
    }
}
