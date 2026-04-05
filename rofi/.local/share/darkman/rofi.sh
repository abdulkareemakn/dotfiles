#!/usr/bin/env bash
case "$1" in
  dark)  ln -sf rose-pine-moon.rasi ~/.config/rofi/colors/active-theme.rasi ;;
  light) ln -sf rose-pine-dawn.rasi ~/.config/rofi/colors/active-theme.rasi ;;
esac
