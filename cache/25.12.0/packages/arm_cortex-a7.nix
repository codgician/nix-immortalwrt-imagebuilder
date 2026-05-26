# 25.12.0 package feeds for arm_cortex-a7
{
  sha256sums = {
    hash = "sha256-b7XRn6FbyoOJxXg9NQ+CtCLi0LFrD0Tw62fJZnkvg3k=";
    name = "arm_cortex-a7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a7/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a7/base/";
    sourceInfo = {
      hash = "sha256-QmmaijDzxJZ8LNt21yBPCH8q1utRl56Lg6E94++dD1Y=";
      name = "arm_cortex-a7-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a7/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a7/luci/";
    sourceInfo = {
      hash = "sha256-gDeU3XjCvHal133DiepHf6p5TjP/WnclexbqgoaW/mI=";
      name = "arm_cortex-a7-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a7/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a7/packages/";
    sourceInfo = {
      hash = "sha256-HmH5f0w2E+x82fGjsE2Jjiil0yIFO0wOZxrutrBQ+VM=";
      name = "arm_cortex-a7-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a7/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a7/routing/";
    sourceInfo = {
      hash = "sha256-pXZPmMTiQUEmUw/5JaM0xdBkJAOoYoJmsj9LefwW8TM=";
      name = "arm_cortex-a7-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a7/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a7/telephony/";
    sourceInfo = {
      hash = "sha256-CJYXJ+kLT8aABTeEKcUkkF/r/IQ0jAnxSGnclvYeS7U=";
      name = "arm_cortex-a7-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a7/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
