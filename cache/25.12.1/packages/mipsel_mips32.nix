# 25.12.1 package feeds for mipsel_mips32
{
  sha256sums = {
    hash = "sha256-RLEio8DS9Fde6MokSgtttAKzu6sNqYPr2NAqmGAPtYI=";
    name = "mipsel_mips32-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_mips32/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_mips32/base/";
    sourceInfo = {
      hash = "sha256-ltkv+R38mV4bI/JkH/p0fyGgjswMa8MR5qojTR3B+vg=";
      name = "mipsel_mips32-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_mips32/base/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_mips32/luci/";
    sourceInfo = {
      hash = "sha256-HmW6UAmJ8R+dn43jtwbjEreCQ7eWn6VYft4IEN0EMiE=";
      name = "mipsel_mips32-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_mips32/luci/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_mips32/packages/";
    sourceInfo = {
      hash = "sha256-E8KjZjxDRRjarV+WuiMRbuKq3L3dGqX3H+FEe190UxI=";
      name = "mipsel_mips32-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_mips32/packages/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_mips32/routing/";
    sourceInfo = {
      hash = "sha256-l75fEv4rjV8zJM0+/6ZlSAl2QaNZxIqZFOIRwrI5CLQ=";
      name = "mipsel_mips32-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_mips32/routing/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_mips32/telephony/";
    sourceInfo = {
      hash = "sha256-7OQ5uo24yxVSm7H/JxHbDbmLwc5aVtjj1QREJEy8uu0=";
      name = "mipsel_mips32-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_mips32/telephony/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
