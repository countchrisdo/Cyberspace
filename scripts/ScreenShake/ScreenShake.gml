/// @desc ScreenShake(magnitude,frames)
/// @arg Magnitude sets the strength of the shake (radius in pixels)
/// @arg Frames sets the length of the shake in frames (60 = 1 second at 60fps)

/// @function   screen_shake(magnitude, frames);
/// @description shake screen
/// @param {int}    magnitude    
/// @param {int}   frames  

function ScreenShake(_magnitude, _frames){
    with(ObjectCamera) {
        if (_magnitude > shake_remain) {
            shake_magnitude = _magnitude;
            shake_remain = _magnitude;
            shake_length = _frames;
        }
    }
}