package native;

import haxe.extern.EitherType;
import native.Types.Key;
import native.Types.ToggleEvent;
import native.Types.Bitmap;
import native.Types.Rect;
import native.Types.Size;
import native.Types.Point;

@:jsRequire('@nut-tree/libnut')
extern class Libnut {
	static var screen:Screen;

	// Keyboard
	static public function setKeyboardDelay(ms:UInt):Void;
	static public function keyTap(key:Key, ?modifier:EitherType<String, Array<Key>>):Void;
	static public function keyToggle(key:Key, event:ToggleEvent, ?modifier:EitherType<String, Array<Key>>):Void;
	static public function typeString(string:String):Void;
	static public function typeStringDelayed(string:String, cpm:UInt):Void;

	// Mouse
	static public function setMouseDelay(delay:UInt):Void;
	static public function moveMouse(x:UInt, y:UInt):Void;
	static public function moveMouseSmooth(x:UInt, y:UInt):Void;
	static public function mouseClick(?button:String, ?double:Bool):Void;
	static public function mouseToggle(?event:ToggleEvent, ?button:String):Void;
	static public function dragMouse(x:UInt, y:UInt):Void;
	static public function scrollMouse(x:UInt, y:UInt):Void;
	static public function getMousePos():Point;

	// Screen
	static public function getScreenSize():Size;
	static public function getWindows():Array<UInt>;
	static public function getActiveWindow():UInt;
	static public function getWindowRect(handle:UInt):Rect;
	static public function getWindowTitle(handle:UInt):String;
}

extern class Screen {
	public function capture(?x:UInt, ?y:UInt, ?width:UInt, ?height:UInt):Bitmap;
	public function highlight(x:UInt, y:UInt, width:UInt, height:UInt, duration:UInt, opacity:UInt):Void;
}
