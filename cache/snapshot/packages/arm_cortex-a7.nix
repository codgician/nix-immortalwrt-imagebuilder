# snapshot package feeds for arm_cortex-a7
{
  sha256sums = {
    hash = "sha256-i1mTv7OoYWHlEsyVWXDIeGrMjsIQ01yBNbj17vF7cP8=";
    name = "arm_cortex-a7-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_cortex-a7/base/";
    sourceInfo = {
      hash = "sha256-u9+Q5vtiK9+BxttZhOacDHTBZQt0Ew/UsUfoYYQDx7g=";
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
      hash = "sha256-n1OlVbIO0MvS0t+TVeJLfk2IeVwon1TtL/DHKNez4qk=";
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
      hash = "sha256-cFousb81INKCUvX1S2EZJki9nQB2+Irt7Dom9epx0NA=";
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
      hash = "sha256-wZz9bqZLKO7M+jUnspHQOJqNuGGx22y50eafD2cqK2w=";
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
      hash = "sha256-OgW8pSm+Iir0Lkdao1I9hKUFrvJI0VfWmBe6Qc3zgzY=";
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
