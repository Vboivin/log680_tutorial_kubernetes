#!/usr/bin/env bash

set -euo pipefail

usage() {
	echo "Create docker credentials in specific namespace(need to do docker login): ${0} [-n <string>]" 1>&2
	exit 0
}

while getopts ":n:h" option; do
	case "${option}" in
	n)
		n=${OPTARG}
		;;
	h)
		usage
		;;
	*)
		usage
		;;
	esac
done

create_credentials_secret() {
	local -r namespace="$1"
	kubectl create secret generic dockerhub-credentials \
		--namespace="$namespace" \
		--from-file=.dockerconfigjson="${HOME}/.docker/config.json" \
		--type=kubernetes.io/dockerconfigjson
}

main() {
	if [[ -z "${n+x}" ]]; then
		n=0
		usage
	else
		create_credentials_secret "$n"
	fi
} && main
