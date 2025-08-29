#!/bin/bash
cd $HOME/.local/share/novnc
sudo apt update
sudo apt install -yq socat gstreamer1.0-tools gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad
sudo apt clean
sudo mkdir -p /etc/pipewire/pipewire.conf.d/
sudo mkdir -p $HOME/.config/systemd/user
sudo cp audio-plugin/simple-protocol.conf /etc/pipewire/pipewire.conf.d
systemctl --user restart pipewire pipewire-pulse
systemctl --user stop novnc.service
cp audio-plugin/novnc*.service $HOME/.config/systemd/user
systemctl --user daemon-reexec
systemctl --user daemon-reload
systemctl --user enable --now novnc.service novnc-audio.service
cd -