# 25.12.0-rc2 package feeds for arm_cortex-a7
{
  sha256sums = {
    hash = "sha256-3ustt+ZIlcNxq7cG1TveiOOSm/7DzRto/g20YsKKIDo=";
    name = "arm_cortex-a7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a7/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a7/base/";
    sourceInfo = {
      hash = "sha256-iHw79ZFd7gutaByG5grF0ucc61q7R9n7eYEId58TG5E=";
      name = "arm_cortex-a7-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a7/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a7/luci/";
    sourceInfo = {
      hash = "sha256-QAJXPZMG/dGJrllvO273DZgo9a1WeJ+zyTuyu1BP7YU=";
      name = "arm_cortex-a7-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a7/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a7/packages/";
    sourceInfo = {
      hash = "sha256-XOs+niyNorRXfBLNwVQLeypTVnACOw3AZLd163eY1hA=";
      name = "arm_cortex-a7-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a7/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a7/routing/";
    sourceInfo = {
      hash = "sha256-01p7wtmXMU5pdyE9Ed1BnggdTs9mHHwV5a3CG3rMO2c=";
      name = "arm_cortex-a7-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a7/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a7/telephony/";
    sourceInfo = {
      hash = "sha256-Km0rhr66hNQuBTMSkpEhIRKU4JCY47abfyXTq3N4Pj0=";
      name = "arm_cortex-a7-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a7/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a7/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
