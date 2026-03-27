# 25.12.0-rc1 package feeds for arm_cortex-a9
{
  sha256sums = {
    hash = "sha256-8hj5nFn1jOi9Pz0EaWLClvkaWUsKTCbPeOEUpOYKH6k=";
    name = "arm_cortex-a9-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a9/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a9/base/";
    sourceInfo = {
      hash = "sha256-TqY9rjhzinvjIbDRUNDxuzkq7GltIbyOjNsXrnxofiU=";
      name = "arm_cortex-a9-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a9/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a9/luci/";
    sourceInfo = {
      hash = "sha256-rsfnVRvtDv0VacmPyQDZVfucDkto0SlckIW6maYGLVg=";
      name = "arm_cortex-a9-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a9/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a9/packages/";
    sourceInfo = {
      hash = "sha256-CadFLr0yz4Hd18ssrzSNa4cI07tARSGoHZWGrrkgeBA=";
      name = "arm_cortex-a9-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a9/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a9/routing/";
    sourceInfo = {
      hash = "sha256-tDLbvfjIXt2Vjs3hZi4bL3cVoadyuivkSk4YYzpcSsk=";
      name = "arm_cortex-a9-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a9/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a9/telephony/";
    sourceInfo = {
      hash = "sha256-5BnY8MFELexQ7VwI+vTKb84oS87/4IujApZjTQPRuRk=";
      name = "arm_cortex-a9-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_cortex-a9/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
