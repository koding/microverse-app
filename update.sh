#!/bin/bash

set -euo pipefail

main() {
	! type refmt &>/dev/null && go get github.com/rjeczalik/refmt

	local old_version=$(refmt -t json Chart.yaml - | jq -r .version | cut -d. -f3)
	local new_version="0.0.$(( old_version + 1 ))"
	local old_pkg="microverse-app-0.0.${old_version}.tgz"
	local new_pkg="microverse-app-${new_version}.tgz"

	refmt set Chart.yaml version ${new_version}
	helm package .
	mv ${new_pkg} docs/
	rm docs/${old_pkg}
	git add docs/${new_pkg}
	helm repo index docs --url https://koding.github.com/microverse-app
}

main
