# 24.10.5 package feeds for arm_arm1176jzf-s_vfp
{
  sha256sums = {
    hash = "sha256-WSRFLM5ckx8K7am3QSLnpHPzLZwmkbOROwCkc6DCt40=";
    name = "arm_arm1176jzf-s_vfp-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_arm1176jzf-s_vfp/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_arm1176jzf-s_vfp/base/";
    sourceInfo = {
      hash = "sha256-w2Uwnf1Gy20z+zzBANAN6eg3SWkHKXHMPer6Fn7qpBo=";
      name = "arm_arm1176jzf-s_vfp-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_arm1176jzf-s_vfp/base/Packages";
    };
    packages =
      let
        p = ./arm_arm1176jzf-s_vfp/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_arm1176jzf-s_vfp/luci/";
    sourceInfo = {
      hash = "sha256-n59pSs7I/J8nAqVHM7VvuPeFy2/Ub8wDqYLUy4ZGdD8=";
      name = "arm_arm1176jzf-s_vfp-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_arm1176jzf-s_vfp/luci/Packages";
    };
    packages =
      let
        p = ./arm_arm1176jzf-s_vfp/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_arm1176jzf-s_vfp/packages/";
    sourceInfo = {
      hash = "sha256-17UWev1B9vc/QfNboHq+QZgpjHyrPlR5SQXtXItX1Hc=";
      name = "arm_arm1176jzf-s_vfp-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_arm1176jzf-s_vfp/packages/Packages";
    };
    packages =
      let
        p = ./arm_arm1176jzf-s_vfp/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_arm1176jzf-s_vfp/routing/";
    sourceInfo = {
      hash = "sha256-2hPG61CjljAPr0Bo4Z4TM9DXuA5gT3Oshlff/xPfRYk=";
      name = "arm_arm1176jzf-s_vfp-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_arm1176jzf-s_vfp/routing/Packages";
    };
    packages =
      let
        p = ./arm_arm1176jzf-s_vfp/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_arm1176jzf-s_vfp/telephony/";
    sourceInfo = {
      hash = "sha256-meR1+hPAu7FeFDGpYMUh4g5KFAC5aHDaPVobn0KZPCE=";
      name = "arm_arm1176jzf-s_vfp-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_arm1176jzf-s_vfp/telephony/Packages";
    };
    packages =
      let
        p = ./arm_arm1176jzf-s_vfp/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
