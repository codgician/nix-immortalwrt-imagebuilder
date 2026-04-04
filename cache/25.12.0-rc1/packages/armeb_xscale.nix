# 25.12.0-rc1 package feeds for armeb_xscale
{
  sha256sums = {
    hash = "sha256-uPhdYRKD0E9UW6TRF1x0X+YR8LjV8G1kfZ5Pe8zOBCU=";
    name = "armeb_xscale-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/armeb_xscale/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/armeb_xscale/base/";
    sourceInfo = {
      hash = "sha256-VHoR0Z0qdy1xJjY3lUNoQSiffQ3PCe/kBv9A9Zt+Bt4=";
      name = "armeb_xscale-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/armeb_xscale/base/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/armeb_xscale/luci/";
    sourceInfo = {
      hash = "sha256-enT2KbbrqGW1fKYgp6kZ78DLuZo3lSfMPpgh8+2cM7E=";
      name = "armeb_xscale-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/armeb_xscale/luci/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/armeb_xscale/packages/";
    sourceInfo = {
      hash = "sha256-MNkQfkxB6kMBCy6l+HzvQWahXBxEzYk7wlv5fe4XoEc=";
      name = "armeb_xscale-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/armeb_xscale/packages/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/armeb_xscale/routing/";
    sourceInfo = {
      hash = "sha256-HnVksKR0PYbz/LWZid9QgHxXdBXDMskMZ3CeDwJVvNg=";
      name = "armeb_xscale-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/armeb_xscale/routing/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/armeb_xscale/telephony/";
    sourceInfo = {
      hash = "sha256-/0y9UZ2vIee26cVqoq115P50xsZ7a8CMO4a019pT1gI=";
      name = "armeb_xscale-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/armeb_xscale/telephony/packages.adb";
    };
    packages =
      let
        p = ./armeb_xscale/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
