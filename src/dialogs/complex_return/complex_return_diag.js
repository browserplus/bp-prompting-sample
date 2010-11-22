// set functions for the buttons
var x = document.getElementById('all_done_button');
var fun = function() {
    var rv = {};
    rv.name = document.getElementById("user_name").value;
    rv.hobby = document.getElementById("user_hobby").value;
    rv.color = document.getElementById("favorite_color").value;
	
	var toppings = ["mushrooms", "greenpeppers", "olives", "onions"];
    var selTop = [];
	
	for (var i = 0; i < toppings.length; i++) {
		if (document.input_form[toppings[i]].checked) {
			selTop.push(toppings[i]);
		}
	}
	rv.toppings = selTop;

	BPDialog.complete(rv);

	return false;
};

document.input_form.button.onclick = fun;
document.input_form.onsubmit = fun;
fun = null;

BPDialog.show(400,400);
