# Action for [ideckia](http://ideckia.github.io): keyboard

## Definition

Create hotkeys or write strings. A wrapper for [NutJs](https://nutjs.dev/)

## Properties

| Name | Type | Description | Shared | Default | Possible values |
| ----- |----- | ----- | ----- | ----- | ----- |
| key_to_tap | String | Tap a key. | false | '' | ["", "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "f1", "f2", "f3", "f4", "f5", "f6", "f7", "f8", "f9", "f10", "f11", "f12", "f13", "f14""f15", "f16", "f17", "f18", "f19", "f20", "f21", "f22", "f23", "f24", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "numpad_0", "numpad_1", "numpad_2", "numpad_3", "numpad_4", "numpad_5", "numpad_6", "numpad_7", "numpad_8""numpad_9", "space", "escape", "tab", "alt", "control", "alt", "control", "shift", "command", "space", "command", "~", "-", "=", "backspace", "[", "]", "\\", ";", "'", "enter", ",", ".", "/", "left", "up", "right", "down""printscreen", "insert", "delete", "home", "end", "pageup", "pagedown", "enter", "audio_mute", "audio_vol_down", "audio_vol_up", "audio_play", "audio_stop", "audio_pause", "audio_prev", "audio_next", "audio_rewind""audio_forward", "audio_repeat", "audio_random"] |
| modifiers | String | Comma separated modifier(s) ('alt', 'command / win', 'control', 'shift') | false | '' | null |
| type_string | String | Types the string like the keyboard would. | false | null | null |

## Example in layout file

* Tap a key with modifiers

```json
{
    "state": {
        "text": "keyboard action example",
        "actions": [
            {
                "name": "keyboard",
                "props": {
                    "key_to_tap": "delete",
                    "modifiers": "control,alt"
                }
            }
        ]
    }
}
```

* Type a string

```json
{
    "state": {
        "text": "keyboard action example",
        "actions": [
            {
                "name": "keyboard",
                "props": {
                    "type_string": "my_password"
                }
            }
        ]
    }
}
```