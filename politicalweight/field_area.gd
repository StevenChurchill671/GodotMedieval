##Area of medium size, ideally could contain
## a field
class_name fieldArea
extends Area3D

##Used to determine which size of an area
##can be built upon - specifically this determines 
##that this area is active as buildable 
##or not
var isActive = false
var size = 8
var containedStructure

func replaceStructure(newStructure):
	containedStructure = newStructure
	if get_child_count()> 1:
		get_child(1).queue_free()
		add_child(newStructure)
	else:
		add_child(newStructure)
