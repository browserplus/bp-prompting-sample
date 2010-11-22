// set functions for the buttons
var x = document.getElementById('all_done_button');
x.onclick = function() {
	BPDialog.complete(null);
	return false;
};

BPDialog.show(400, 230);
