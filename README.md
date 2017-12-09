# macOS-ansible

My macOS setup automated by Ansible

## Getting started

Run the bootstrap script to install Ansible and Brew

```sh
$ ./bootstrap.sh
```

Run the playbook

```sh
$ ansible-playbook site.yml -i inventory -K
```

To just run a specific role (e.g. development)

```sh
$ ansible-playbook site.yml -i inventory -K -t development
```

## TODO
* Disable Notifications & Dashboard
* https://stackoverflow.com/a/4490124
* Mouse speed
* Set Google DNSs

## Manual steps
* Virtualbox requires sudo privileges
* Allow extensions from Oracle to install Virtualbox
* zoomus requires sudo privileges

### Apps that require manual installation
* 1Password (AppStore)
* Pocket (AppStore)
* Clipmenu

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
