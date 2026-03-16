# snapshot package feeds for arm_xscale
{
  sha256sums = {
    hash = "sha256-eX0YyMf5ILy6fMScD1JWTA0i7Pi6flSmWAgPIJ/vqMo=";
    name = "arm_xscale-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/arm_xscale/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_xscale/base/";
    sourceInfo = {
      hash = "sha256-bz9Zkkh/2jLzhlGz8pEIpJieJCpMdCc2PS+eIcIgc/c=";
      name = "arm_xscale-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_xscale/base/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_xscale/luci/";
    sourceInfo = {
      hash = "sha256-Yy3gtYe8Fxk1cXMeTG75HlC+4ibVgWHzqmzuYUKCXwU=";
      name = "arm_xscale-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_xscale/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_xscale/packages/";
    sourceInfo = {
      hash = "sha256-jr05CsrJtqqB2uXTqZsVI78W9Jl9EthsfPAEYWiKL6U=";
      name = "arm_xscale-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_xscale/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_xscale/routing/";
    sourceInfo = {
      hash = "sha256-oG6PbwZyLg7fde3vvIKSfp8wYLwmnXoV3aXBfA/f2jg=";
      name = "arm_xscale-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_xscale/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_xscale/telephony/";
    sourceInfo = {
      hash = "sha256-0HIcp1jw2yrro2K2JrJHf+LYnTnFI7oGo2ORFuUU2gU=";
      name = "arm_xscale-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_xscale/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_xscale/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
