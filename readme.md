# Welcome

## Prerequisites

### Configuring python support

* install python3

 ``` bash
 choco install python3
 ```

or

``` bash
apt install python3
```

* `pip install pynvim`

> It might be need to install c++ dev profile via visual studio, for windows

### Configuring nodejs and yarn

* Install nodejs

``` bash
choco install nodejs
```

or

``` bash
apt install nodejs
```

then run `npm install yarn`

## Cloning this repo

### Linux

``` bash
git clone git@github.com:jedielson/nvim-files.git ~/.config/nvim
```

### Windows

``` bash
git clone git@github.com:jedielson/nvim-files.git ~/AppData/Local/nvim
```

### Configuring Plugins

Open nvim and run `:PlugInstall`

## Adding LSP Support


### Omnisharp

* Install omnisharp-roslyn

``` bash
# Windows
choco install omnisharp
```

TODO: Improve linux docs

``` bash
#linux
apt install roslyn
```

After installing omnisharp, edit your `./after/plugin/omnisharp.vim` and
set `omnisharp_bin` correctly.

To enable .editorconfig support, you must configure your [omnisharp.json](https://github.com/OmniSharp/omnisharp-roslyn/wiki/Configuration-Options).
