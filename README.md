# Devshell presets

## Add new preset

It's really easy to add new custom presets.

### 1. Create folder
Create a folder with the name of your preset.

### 2. Create your flake.nix
In this new folder build your devshell preset, recomended to use the basic devshell as a starting point.

### 3. Link the devshell

In the main `flake.nix` in the root add a new line

```nix
my_new_devshell = {
  path = ./my_new_devshell;
  description = "My new development environment";
};
```

## Install

### 1. Clone the repo

```bash
git clone https://github.com/vincbro/devshells.git
```

### 2. Add the mkdev command

Add this to your .bashrc or .zshrc:

```bash
mkdev() {
  # Usage: mkdev [template-name]
  # If no name is given, it uses "default"
  local template=${1:-default}

  local repo="path:$HOME/projects/devshells"

  echo "Initializing $template shell..."
  nix flake init -t "$repo#$template"

  echo "use flake" > .envrc
  direnv allow

  echo "Done."
}  
```



