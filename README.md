# macOS-ansible

My macOS setup automated with Ansible

## Getting started

Run the bootstrap script to install Ansible and Brew

```sh
$ ./bootstrap.sh
```

Run the playbook

```sh
$ ansible-playbook site.yml -i inventory -K
```

## Set your custom hostname

Set the value of the *hostname* variable to your hostname and then rename *custom_vars.example.yml*

```sh
$ mv custom_vars.example.yml custom_vars.yml
```

## SSH keys configuration

Copy your ssh keys to roles/ssh/files

```sh
$ cp private-ssh-key roles/ssh/files/
$ cp public-ssh-key roles/ssh/files/
```

Set the value of *private_ssh_key_name* and *public_ssh_key_name* variables to the names of your private and public key in custom_vars.example.yml

Rename *custom_vars.example.yml*

```sh
$ mv custom_vars.example.yml custom_vars.yml
```

## Tags available

To just run a specific tag (e.g. development)

```sh
$ ansible-playbook site.yml -i inventory -K -t development
```

### development
* git
* node
* yarn
* watchman
* clojure
* leiningen
* java
* virtualbox
* vagrant
* visual-studio-code
* firebase-tools

### other
* vlc
* flux
* evernote
* zoomus
* spotify
* dropbox

### productivity
* spectacle
* 1clipboard

### terminal
* zsh
* autojump
* hyper

### ssh
* sshconfig
* ssh keys

### macos
* sets hostname
* .macos config

### web
* google-chrome
* firefox

## Manual steps
* Virtualbox installation requires sudo password
* zoomus installation requires sudo password
* Allow extensions from Oracle to install Virtualbox

### Manual App installation
* 1Password (AppStore)
* Pocket (AppStore)
* Clipmenu (Web)

### Manual App customization
* 1Clipboard: Change shortcut to cmd + shift + v

### Manual OS customization
* Automatically hide/show menu bar
* Show bluetooth in Menu bar
* Show battery percentage
* Clock show date
* Adjust key repeat and delay till repeat in keyboard settings
* Disable dictation shortcut (Keyboard -> dictation shortcut)
* Enable file encryption with FileVault
* Customize Spotlight search results
* Enable macOS system data files and security updates
* Disable everything in "Siri suggestions & privacy"
* Disable allow handoff between mac and icloud services (General preferences)
* Require password inmediatly after sleep/screen-saver
* Configure Sophos antivirus
* Configure privacy settings macOS (security & privacy preferences)

## TODO
* Automate remaining manual os customization tasks
* Automate remaining manual app customization tasks
* Automate App Store apps installation with mas