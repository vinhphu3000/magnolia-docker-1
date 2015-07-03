#!/bin/bash
set -e

cd "$(dirname "$(readlink -f "$BASH_SOURCE")")"

versions=( "$@" )
if [ ${#versions[@]} -eq 0 ]; then
	versions=( */ )
fi
versions=( "${versions[@]%/}" )

for version in "${versions[@]}"; do
	majorVersion="${version%%-*}" # "6"
	
	fullVersion="$(curl -fsSL --compressed "https://nexus.magnolia-cms.com/content/repositories/magnolia.public.releases/info/magnolia/bundle/magnolia-bundled-webapp/" | grep '<a href=".*">'"$majorVersion." | sed -r 's!.*<a href=".*">(.*)/</a>.*!\1!' | sort -V | tail -1)"
	(		
		set -x
		sed -ri '
			s/^(ENV MAGNOLIA_VERSION) .*/\1 '"$fullVersion"'/;
		' "$version/Dockerfile"
	)
done