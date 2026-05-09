# snapshot package feeds for arm_cortex-a7
{
  sha256sums = {
    hash = "sha256-DI+/Cxy4lXTkyf2fYrhFd63S1+8Un2RQIKPANFHJCSQ=";
    name = "arm_cortex-a7-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7/base/";
    sourceInfo = {
      hash = "sha256-8wIkgoTOThDGCls+PBPH6Nt1ppsf+YWIw3IaSLBXauw=";
      name = "arm_cortex-a7-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7/luci/";
    sourceInfo = {
      hash = "sha256-8H7ZMAqVjUFFIYJhPb2RmuDU/90tNeZllGUT0cwLa1k=";
      name = "arm_cortex-a7-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7/packages/";
    sourceInfo = {
      hash = "sha256-fOzMtW6PqL8yAmZTBZ87ooqjs3D57ftJFPqXEKZ903E=";
      name = "arm_cortex-a7-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7/routing/";
    sourceInfo = {
      hash = "sha256-Edqu6QghxbyIbMhKo3fwUD5CSW78hUVnGZ9QxYQumsY=";
      name = "arm_cortex-a7-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7/telephony/";
    sourceInfo = {
      hash = "sha256-4lo+okiY8QEr87zlQNgbGp4yGno1xWN8TS2ZyB7Plf8=";
      name = "arm_cortex-a7-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
