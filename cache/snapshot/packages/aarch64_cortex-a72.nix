# snapshot package feeds for aarch64_cortex-a72
{
  sha256sums = {
    hash = "sha256-dHx7lSxz0Ceh1Or6VF+gcVrP58JM9KlbcUfV8DYboJI=";
    name = "aarch64_cortex-a72-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_cortex-a72/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_cortex-a72/base/";
    sourceInfo = {
      hash = "sha256-KLE8kHJYbePCOn+vLDyU7oULDho2N9UbNY4dCAZ90Jw=";
      name = "aarch64_cortex-a72-base-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_cortex-a72/base/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_cortex-a72/luci/";
    sourceInfo = {
      hash = "sha256-v4MJKXx+8GJ3re8qKnivHRS91q+lwF6YVC7qqsNxJbE=";
      name = "aarch64_cortex-a72-luci-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_cortex-a72/luci/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_cortex-a72/packages/";
    sourceInfo = {
      hash = "sha256-JGVwoYKShPdilt7ejxJxgMso+Sag+xkNLB+cQwkn1J0=";
      name = "aarch64_cortex-a72-packages-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_cortex-a72/packages/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_cortex-a72/routing/";
    sourceInfo = {
      hash = "sha256-OGOLYSDaPY5OisBLp1I7G7X1Y80uM3j7FuQR3XXTCP0=";
      name = "aarch64_cortex-a72-routing-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_cortex-a72/routing/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_cortex-a72/telephony/";
    sourceInfo = {
      hash = "sha256-wVGCjWL9HF3/OMEODRHWJml5A6L2DdC7cqrZ9J3jS3I=";
      name = "aarch64_cortex-a72-telephony-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/packages/aarch64_cortex-a72/telephony/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
