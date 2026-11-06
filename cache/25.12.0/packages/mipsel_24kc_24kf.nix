# 25.12.0 package feeds for mipsel_24kc_24kf
{
  sha256sums = {
    hash = "sha256-ASdtDv3QrrL8D/lP5o/FHJYP2nkPcyI0tVbC5rwRoDI=";
    name = "mipsel_24kc_24kf-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc_24kf/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc_24kf/base/";
    sourceInfo = {
      hash = "sha256-j68PxKPQUioLrqw9xsb1xRAp2NU75GcwX4I3AjgW6Hg=";
      name = "mipsel_24kc_24kf-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc_24kf/base/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc_24kf/luci/";
    sourceInfo = {
      hash = "sha256-wHytCxbLHoZ1FNeCSCPC+FqMmVS3Guo0BZfCPH7cneo=";
      name = "mipsel_24kc_24kf-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc_24kf/luci/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc_24kf/packages/";
    sourceInfo = {
      hash = "sha256-zvu2B4DrwHXHqjdF8A5AGvXS+IcGAVXpFB8yOOShpUY=";
      name = "mipsel_24kc_24kf-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc_24kf/packages/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc_24kf/routing/";
    sourceInfo = {
      hash = "sha256-jm/L/cUGG9fmxEbqfTysCjK0WeZrPpYzfpckXztdcx8=";
      name = "mipsel_24kc_24kf-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc_24kf/routing/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc_24kf/telephony/";
    sourceInfo = {
      hash = "sha256-OOmIMdILjfbQNkHTucJBQamnMhmi3zWSTaaoeV/bCnc=";
      name = "mipsel_24kc_24kf-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mipsel_24kc_24kf/telephony/packages.adb";
    };
    packages =
      let
        p = ./mipsel_24kc_24kf/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
