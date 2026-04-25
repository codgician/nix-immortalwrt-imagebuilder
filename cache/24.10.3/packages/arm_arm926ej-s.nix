# 24.10.3 package feeds for arm_arm926ej-s
{
  sha256sums = {
    hash = "sha256-k9F+LKm9Xi72LyY/euc93QjIAFJiE4o8UWWr0pAUXz4=";
    name = "arm_arm926ej-s-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_arm926ej-s/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_arm926ej-s/base/";
    sourceInfo = {
      hash = "sha256-/ZB2wsxlqyMS4n62or5/O/gPclswdOv7hbZJmYJU+ow=";
      name = "arm_arm926ej-s-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_arm926ej-s/base/Packages";
    };
    packages =
      let
        p = ./arm_arm926ej-s/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_arm926ej-s/luci/";
    sourceInfo = {
      hash = "sha256-VYHSRBH1e+3oDzoGvjxet7n95lYrWRLsDz4Og1hCgtM=";
      name = "arm_arm926ej-s-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_arm926ej-s/luci/Packages";
    };
    packages =
      let
        p = ./arm_arm926ej-s/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_arm926ej-s/packages/";
    sourceInfo = {
      hash = "sha256-hDBbM15+8Kn7qZuV8t7ueFUR6jSjTuxa75V/o4E7ZIo=";
      name = "arm_arm926ej-s-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_arm926ej-s/packages/Packages";
    };
    packages =
      let
        p = ./arm_arm926ej-s/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_arm926ej-s/routing/";
    sourceInfo = {
      hash = "sha256-MoHXcuC5dzGDcXyTenhFu8+BjlwlcIs78jZNdk+oRd0=";
      name = "arm_arm926ej-s-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_arm926ej-s/routing/Packages";
    };
    packages =
      let
        p = ./arm_arm926ej-s/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_arm926ej-s/telephony/";
    sourceInfo = {
      hash = "sha256-UNGyLWQ04uq4ukxrxtS2fcFe779xsy6yppGX3OubaUs=";
      name = "arm_arm926ej-s-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/packages/arm_arm926ej-s/telephony/Packages";
    };
    packages =
      let
        p = ./arm_arm926ej-s/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
