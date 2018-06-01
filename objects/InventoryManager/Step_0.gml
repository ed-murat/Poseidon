var itemSelectionnable = ItemManager.itemSelectionnable;
var itemIndex = ds_list_find_index(itemSelectionnable,itemSelection);
var itemListSize = ds_list_size(itemSelectionnable);

if(gamepad_button_check_pressed(0,gp_padl)) {
	var itemIndex = ds_list_find_index(itemSelectionnable,itemSelection) - 1;
	if(itemIndex < 0) {
		itemIndex = itemListSize-1;
	}
	itemSelection = ds_list_find_value(itemSelectionnable,itemIndex);
}
if(gamepad_button_check_pressed(0,gp_padr)) {
	var itemIndex = ds_list_find_index(itemSelectionnable,itemSelection) + 1;
	if(itemIndex >= itemListSize) {
		itemIndex = 0;
	}
	itemSelection = ds_list_find_value(itemSelectionnable,itemIndex);
}