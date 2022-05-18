package native;

@:jsRequire('@nut-tree/libnut')
extern class Libnut {
	static public function setKeyboardDelay(ms:UInt):Void;
	static public function typeString(type:String):Void;

	static public function keyTap(key:Key, modifiers:Array<Key>):Void;
}
