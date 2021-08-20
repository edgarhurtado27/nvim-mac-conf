# nvim-mac-conf
My neovim configuration for mac SO

## Installation

Clone this repo in **~/.config/** folder, create the path if needed.

Rename the folder _nvim-mac-conf_ to **nvim**

```sh
$ mv nvim-mac-conf/ nvim
```

Open the **nvim** folder with neovim, and install the plugins with
```sh
:PlugInstall
```


## FAQ
**Error:** When I open nvim it shows me a lot of erros ...

**Answer:** 
For any error make sure you have installed **tmux, python3**
```sh
brew install tmux
brew install python3
python3 -m pip install --user --upgrade pynvim
```

**Question:** Eslint does not work on my Javascript projects

**Answer:** 
1. Check that eslint exist on your project **devDependencies**
2. Install the next coc extensions for Javascript LSP support 
```sh
:CocInstall coc-json coc-tsserver
:CocInstall coc-eslint
:CocInstall eslint.showOutputChannel
```
3. **Still does not work?** Make sure you have properly configured your eslintrc file


### References
- https://github.com/neoclide/coc.nvim
- https://github.com/neoclide/coc-tsserver
- https://github.com/neoclide/coc-eslint
- https://github.com/glepnir/oceanic-material
- https://github.com/nschurmann/configs
- https://github.com/JoakoV3/nvim-linux
- https://github.com/DariaSova/dotfiles/blob/fun/.vimrc
- https://neovim.io/doc/user/provider.html#provider-python

