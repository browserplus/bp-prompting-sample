// set functions for the buttons
var x = document.getElementById('no_way_button');
x.onclick = function() {
    BPDialog.complete(false);
    return false;
};

var x = document.getElementById('ok_button');
x.onclick = function() {
	BPDialog.complete(true);
	return false;
};

// now display the input.
try {
	var args = BPDialog.args();
	BPDialog.log("args value: " + args);
	BPDialog.log("args.content value: " + args.content);
	var outDiv = document.getElementById('message_output');
    if (outDiv && args && args.content) {
		outDiv.innerHTML = args.content;
	}

	BPDialog.show(607, 230);
} catch (ex) {
	BPDialog.log("exception: " + ex);
}
