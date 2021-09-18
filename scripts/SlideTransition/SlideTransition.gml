/// @desc SlipeTransition(mode, targetroom)
/// @arg Mode sets transition mode between next, restart amd goto.
/// @arg Target sets target room when using goto mode.

/// @function   slide_transition(mode, targetroom);
/// @description Do transition
/// @param {int}    mode    Mode sets transition mode
/// @param {room}   targetroom  OPTIONAL! target room

function SlideTransition(_mode){
    with(ObjectTransition) {
        mode = _mode;
        if (argument_count > 1) {
            target = argument[1];
        }
    }
}
