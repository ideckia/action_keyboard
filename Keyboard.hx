import native.Libnut;

using api.IdeckiaApi;

typedef Props = {
	@:editable("Tap a key.", '', [
		'', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'f1', 'f2',
		'f3', 'f4', 'f5', 'f6', 'f7', 'f8', 'f9', 'f10', 'f11', 'f12', 'f13', 'f14', 'f15', 'f16', 'f17', 'f18', 'f19', 'f20', 'f21', 'f22', 'f23', 'f24',
		'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'numpad_0', 'numpad_1', 'numpad_2', 'numpad_3', 'numpad_4', 'numpad_5', 'numpad_6', 'numpad_7',
		'numpad_8', 'numpad_9', 'space', 'escape', 'tab', 'alt', 'control', 'shift', 'command', '~', '-', '=', 'backspace', '[', ']', '\\', ';', "'", 'enter',
		',', '.', '/', 'left', 'up', 'right', 'down', 'printscreen', 'insert', 'delete', 'home', 'end', 'pageup', 'pagedown', 'enter', 'audio_mute',
		'audio_vol_down', 'audio_vol_up', 'audio_play', 'audio_stop', 'audio_pause', 'audio_prev', 'audio_next', 'audio_rewind', 'audio_forward',
		'audio_repeat', 'audio_random'
	])
	var key_to_tap:String;

	@:editable("Comma separated modifier(s) ('alt', 'command', 'control', 'shift')", '')
	var modifiers:String;
	@:editable("Types the string like the keyboard would.", null)
	var type_string:String;
}

@:name('keyboard')
@:description('Create hotkeys or write strings. A wrapper for NutJs')
class Keyboard extends IdeckiaAction {
	override function init(initialState:ItemState):js.lib.Promise<ItemState> {
		Libnut.setKeyboardDelay(0);
		return super.init(initialState);
	}

	public function execute(currentState:ItemState):js.lib.Promise<ItemState> {
		return new js.lib.Promise((resolve, reject) -> {
			if (props.key_to_tap != '') {
				var modifierArray = [];
				if (props.modifiers != '')
					modifierArray = props.modifiers.split(',').map(m -> StringTools.trim(m));
				Libnut.keyTap(props.key_to_tap.toLowerCase(), modifierArray);
			}

			if (props.type_string != null)
				Libnut.typeString(props.type_string);

			resolve(currentState);
		});
	}
}
