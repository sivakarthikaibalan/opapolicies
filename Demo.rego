package envoy.authz

import data.envoy.authz.matches_resourse_group
import data.envoy.authz.matches_role
import data.envoy.authz.matches_user_attributes

allow {
	matches_role("admin")
	matches_resourse_group
}

allow {
	clearence_level
}

clearence_level {
	matches_resourse_group
	matches_user_attributes
}
