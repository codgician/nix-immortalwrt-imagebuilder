# 25.12.1 package feeds for arm_cortex-a7
{
  sha256sums = {
    hash = "sha256-0heqj0ZdvmNC85aRJQ++i6JHVHefnp3GARa6tYAiAU0=";
    name = "arm_cortex-a7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_cortex-a7/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_cortex-a7/base/";
    sourceInfo = {
      hash = "sha256-+EUGyLXj9vIkO0hwPtjlTLptVhtU+OscnF+PGqSwr0A=";
      name = "arm_cortex-a7-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_cortex-a7/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_cortex-a7/luci/";
    sourceInfo = {
      hash = "sha256-wgCCA6aEwcce/kWp1czBCiOe8wBYmmhHsET/nnutDDE=";
      name = "arm_cortex-a7-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_cortex-a7/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_cortex-a7/packages/";
    sourceInfo = {
      hash = "sha256-iRpslGbyRCQiiuOv2qzFTNaLGELzzD00RrAu6E+jNVk=";
      name = "arm_cortex-a7-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_cortex-a7/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_cortex-a7/routing/";
    sourceInfo = {
      hash = "sha256-DIMR8jxsL+ep6CWxj04q3+GJfv7Gv2U89RPO4KnmzOc=";
      name = "arm_cortex-a7-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_cortex-a7/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_cortex-a7/telephony/";
    sourceInfo = {
      hash = "sha256-sQvvBxImEtnp2NMfo6TGz+g2/cnzEGJ2ZXuAd7JU6fA=";
      name = "arm_cortex-a7-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_cortex-a7/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
