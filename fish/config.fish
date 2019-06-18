bind \e\[P delete-char

set PATH $HOME/bin /opt/node-v10.15.3-linux-armv7l/bin /usr/lib/go-1.11/bin/ $PATH


# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[ -f /opt/node-v10.15.3-linux-armv7l/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.fish ]; and . /opt/node-v10.15.3-linux-armv7l/lib/node_modules/electron-forge/node_modules/tabtab/.completions/electron-forge.fish
