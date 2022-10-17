FROM gitpod/workspace-full:latest

RUN tarball_url="$(curl -Ls "https://api.github.com/repos/cli/cli/releases/latest" \
		| grep -o 'https://github.com/.*/releases/download/.*/gh_.*linux_amd64.tar.gz')" \
	&& curl -Ls "$tarball_url" | sudo tar -C /usr --strip-components=1 -xpzf -
