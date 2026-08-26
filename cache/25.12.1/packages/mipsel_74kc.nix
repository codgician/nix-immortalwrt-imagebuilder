# 25.12.1 package feeds for mipsel_74kc
{
  sha256sums = {
    hash = "sha256-u6VnLYbwx6pjEwFnmFZWm3MhAmVk+IcL/S6anhyIRvs=";
    name = "mipsel_74kc-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_74kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_74kc/base/";
    sourceInfo = {
      hash = "sha256-tovfe7iE9P6MTfibiAm9mAqWg/kLw91rxnRPQIoSrqQ=";
      name = "mipsel_74kc-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_74kc/base/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_74kc/luci/";
    sourceInfo = {
      hash = "sha256-bWRjCHJ2kYWk2rjZ1gqk+Kfwpy705sdK/6dXsyItY9E=";
      name = "mipsel_74kc-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_74kc/luci/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_74kc/packages/";
    sourceInfo = {
      hash = "sha256-Mqoihxm9yg6/MWX81EdWMt5b93NhohuU598PNNQVpg4=";
      name = "mipsel_74kc-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_74kc/packages/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_74kc/routing/";
    sourceInfo = {
      hash = "sha256-jC+mgX8k55sxBWdcVCL7EBlBGUXkEWBetZBhRMc6MHI=";
      name = "mipsel_74kc-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_74kc/routing/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_74kc/telephony/";
    sourceInfo = {
      hash = "sha256-JIkKLkxmxUYPCBAHeh7AOLSNfM/xcUCTZb/7G8KhC94=";
      name = "mipsel_74kc-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/mipsel_74kc/telephony/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
