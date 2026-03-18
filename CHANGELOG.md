# Changelog

Notable and less notable changes.

## [0.1.0]

- **Require password** checkbox: off = VNC has no password (trusted networks only); on = use the password field.
- Default **port 6080** (was 8080). Update bookmarks and port mappings if upgrading.
- Default **resolution 1024x600** (was 768x1024).
- Upgrades: if your saved config has no `require_password` yet but still has a **password**, VNC auth stays enabled until you turn **Require password** off or clear the password.

## [0.0.9]

- Improve security (where improve actually means add some basic security so not everyone on the network can access your HA dashboard).
**Note**: Because a password is required the upgrade will end with a error telling you to check the supervisor logs. It's because there is no password set. After the upgrade, go to Configuration and add a password and then start the add-on again.

## [0.0.8]

- Initial public release.
