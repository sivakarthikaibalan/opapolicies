package envoy.authz

matches_resourse_group {
	data.user[j].name == input.user
	data.resourses[i].name == input.resou
	data.resourses[i].group == data.user[j].resource_group
}

matches_role(role) {
	data.user[i].name == input.user
	data.user[i].role == role
}

matches_user_attributes {
	data.user[i].name == input.user
	data.actions[j].type = input.action
	data.user[i].clearence_level >= data.actions[j].clearence_level
}