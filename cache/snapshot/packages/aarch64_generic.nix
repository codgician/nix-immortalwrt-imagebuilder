# snapshot package feeds for aarch64_generic
{
  sha256sums = {
    hash = "sha256-7hIdZOY9DHtddThtf3VgU57jjFDYn/7kPoqlmkRs9mw=";
    name = "aarch64_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/base/";
    sourceInfo = {
      hash = "sha256-sRUWYKA7Nfwi+NPbp3ZDkvafY6Pi7NHewA66cArXeik=";
      name = "aarch64_generic-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/base/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/luci/";
    sourceInfo = {
      hash = "sha256-Gc7Sc/CmnVHdTSYAffVGydvLfyi877+5b586dn5BxBs=";
      name = "aarch64_generic-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/luci/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/packages/";
    sourceInfo = {
      hash = "sha256-2Ko6aZwB1fXrc3i2RmF/VxZmmJd7bYmRqWIinC9/WVM=";
      name = "aarch64_generic-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/packages/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/routing/";
    sourceInfo = {
      hash = "sha256-2XYfm5lOA+9gG2QIta+p5D7KYkXST+tw1kKn5Qhq1bI=";
      name = "aarch64_generic-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/routing/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/telephony/";
    sourceInfo = {
      hash = "sha256-5xPDcu8b8HDn8p23SkazTqsHysi688zDrjSEmD/wwJI=";
      name = "aarch64_generic-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_generic/telephony/packages.adb";
    };
    packages =
      let
        p = ./aarch64_generic/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
