// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sct_stateComponent() constructor{
	state = State.Idle;
	
	function getState(){
		return state;
	}
	
	function setState(newState){
		state = newState;
	}
}