'''class_name HurtComponent 
extends Area2D

@export var tool: DataTypes.Tools = DataTypes.Tools.None 

signal on_hurt 

func _on_area_entered(area: Area2D) -> void:
	var hit_component = area as HitComponent
	
	if tool == hit_component.current_tool:
		on_hurt.emit(hit_component.hit_damage)    '''
class_name HurtComponent 
extends Area2D

@export var tool: DataTypes.Tools = DataTypes.Tools.None

signal hurt

func _on_area_entered(area: Area2D) -> void:
	var hit_component = area as HitComponent
	if hit_component == null:
		return  # Not a HitComponent, so don’t run further

	if tool == hit_component.current_tool:
		emit_signal("hurt", hit_component.hit_damage)
