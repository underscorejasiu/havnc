## Home Assistant Dashboard through VNC

_Note_: This is a pre-release, it mostly works on my iPad2, most of the time, but unless you want to fiddle I'd wait a bit.


Simple add-on which allows you to view and interact with a dashboard (or any other webpage) through a modern chromium instance inside a noVNC webpage.

Very useful in case your browser don't support all the newfangled webstuff but enough to work with older versions of noVNC.

For example the iPad2.

## Usage

### From the Add-on Store (recommended)

1. **Settings → Add-ons → Add-on Store** → **⋮** → **Repositories**
2. Add: `https://github.com/underscorejasiu/havnc`
3. Refresh; install **HAVNC**

The repo must include **`repository.yaml`** at the root (this file). Without it, Home Assistant reports *“is not a valid add-on repository”*.

### Local `/addons` folder

Clone into your `/addons/` folder, refresh the add-ons page, and install.

## Tips
[Kiosk-mode](https://github.com/NemesisRE/kiosk-mode) is really useful for a cleaner look.

[ha-lcars](https://github.com/th3jesta/ha-lcars) for the one true interface (as seen in my example photo).
