extends Area3D
var containedHouse

func replaceStructure(newStructure):
	containedHouse = newStructure
	if get_child_count()> 1:
		get_child(1).queue_free()
		add_child(newStructure)
	else:
		add_child(newStructure)
