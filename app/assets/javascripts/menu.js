var setActiveMenuItem = function() {
	var menu = document.getElementById('hylo_main_menu');
	var controller = menu.getAttribute("controller")
	menu.children[controller].setAttribute('class', 'active');
	console.log("The " + controller + " tab should now be active.")
}

// var setActiveMenuItemForThis = function() {
// 	var controller = this.getAttribute("controller")
// 	this.children[controller].setAttribute('class', 'active');
// }

