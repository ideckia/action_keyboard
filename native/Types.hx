package native;

typedef Types = {}

enum abstract Key(String) from String to String {
	var A = "a";
	var B = "b";
	var C = "c";
	var D = "d";
	var E = "e";
	var F = "f";
	var G = "g";
	var H = "h";
	var I = "i";
	var J = "j";
	var K = "k";
	var L = "l";
	var M = "m";
	var N = "n";
	var O = "o";
	var P = "p";
	var Q = "q";
	var R = "r";
	var S = "s";
	var T = "t";
	var U = "u";
	var V = "v";
	var W = "w";
	var X = "x";
	var Y = "y";
	var Z = "z";
	var F1 = "f1";
	var F2 = "f2";
	var F3 = "f3";
	var F4 = "f4";
	var F5 = "f5";
	var F6 = "f6";
	var F7 = "f7";
	var F8 = "f8";
	var F9 = "f9";
	var F10 = "f10";
	var F11 = "f11";
	var F12 = "f12";
	var F13 = "f13";
	var F14 = "f14";
	var F15 = "f15";
	var F16 = "f16";
	var F17 = "f17";
	var F18 = "f18";
	var F19 = "f19";
	var F20 = "f20";
	var F21 = "f21";
	var F22 = "f22";
	var F23 = "f23";
	var F24 = "f24";
	var Num0 = "0";
	var Num1 = "1";
	var Num2 = "2";
	var Num3 = "3";
	var Num4 = "4";
	var Num5 = "5";
	var Num6 = "6";
	var Num7 = "7";
	var Num8 = "8";
	var Num9 = "9";
	var NumPad0 = "numpad_0";
	var NumPad1 = "numpad_1";
	var NumPad2 = "numpad_2";
	var NumPad3 = "numpad_3";
	var NumPad4 = "numpad_4";
	var NumPad5 = "numpad_5";
	var NumPad6 = "numpad_6";
	var NumPad7 = "numpad_7";
	var NumPad8 = "numpad_8";
	var NumPad9 = "numpad_9";
	var Space = "space";
	var Escape = "escape";
	var Tab = "tab";
	var Alt = "alt";
	var Control = "control";
	var Shift = "shift";
	var Cmd = "command";
	var Grave = "~";
	var Minus = "-";
	var Equal = "=";
	var Backspace = "backspace";
	var LeftBracket = "[";
	var RightBracket = "]";
	var Backslash = "\\";
	var Semicolon = ";";
	var Quote = "'";
	var Return = "enter";
	var Comma = ",";
	var Period = ".";
	var Slash = "/";
	var Left = "left";
	var Up = "up";
	var Right = "right";
	var Down = "down";
	var Print = "printscreen";
	// var Pause = null;
	var Insert = "insert";
	var Delete = "delete";
	var Home = "home";
	var End = "end";
	var PageUp = "pageup";
	var PageDown = "pagedown";
	// var Add = null;
	// var Subtract = null;
	// var Multiply = null;
	// var Divide = null;
	// var Decimal = null;
	var Enter = "enter";
	// var CapsLock = null;
	// var ScrollLock = null;
	// var NumLock = null;
	var AudioMute = "audio_mute";
	var AudioVolDown = "audio_vol_down";
	var AudioVolUp = "audio_vol_up";
	var AudioPlay = "audio_play";
	var AudioStop = "audio_stop";
	var AudioPause = "audio_pause";
	var AudioPrev = "audio_prev";
	var AudioNext = "audio_next";
	var AudioRewind = "audio_rewind";
	var AudioForward = "audio_forward";
	var AudioRepeat = "audio_repeat";
	var AudioRandom = "audio_random";
}

enum abstract ToggleEvent(String) from String to String {
	var up;
	var down;
}

typedef Point = {
	var x:UInt;
	var y:UInt;
}

typedef Size = {
	var width:UInt;
	var height:UInt;
}

typedef Rect = {
	var x:UInt;
	var y:UInt;
	var width:UInt;
	var height:UInt;
}

typedef Bitmap = {
	var width:UInt;
	var height:UInt;
	var image:Any;
	var byteWidth:UInt;
	var bitsPerPixel:UInt;
	var bytesPerPixel:UInt;
}
