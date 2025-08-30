## noVNC 1.4.0 with audio support

noVNC downloaded from https://github.com/novnc/noVNC/releases/tag/v1.4.0.

Audio support taken from https://github.com/me-asri/noVNC-audio-plugin.

### Setup
This assume you have vncserver running on port 5901.
```bash
git clone https://github.com/musahi0128/noVNC-1.4.0-audio.git
cp -r noVNC-1.4.0-audio/.local ~/
bash ~/.local/share/novnc/setup.sh
```
After the script completed, you should be able to access it via http://localhost:6080.
