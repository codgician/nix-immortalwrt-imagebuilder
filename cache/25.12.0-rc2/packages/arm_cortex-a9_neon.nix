# 25.12.0-rc2 package feeds for arm_cortex-a9_neon
{
  sha256sums = {
    hash = "sha256-kltOXmzY8FLZI7d352Aa1M7liKUqR6yaXfhXXLdrCTo=";
    name = "arm_cortex-a9_neon-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a9_neon/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a9_neon/base/";
    sourceInfo = {
      hash = "sha256-wfDzZZ2DJ5ZAIwFd7LumBjWSDtrouZYyvHnHJseMdhs=";
      name = "arm_cortex-a9_neon-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a9_neon/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a9_neon/luci/";
    sourceInfo = {
      hash = "sha256-gJVFWzP2me3aD2OiXCZYoOIi45JVZ4Ue+9e5DitheDo=";
      name = "arm_cortex-a9_neon-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a9_neon/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a9_neon/packages/";
    sourceInfo = {
      hash = "sha256-aEcd0+trgTOXQbcyDx4+JmHTvd3kVPHndGWKzgS3Grk=";
      name = "arm_cortex-a9_neon-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a9_neon/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a9_neon/routing/";
    sourceInfo = {
      hash = "sha256-+V0X3EZUBhGjEXxnTVco8YtN7FBKMY88thXAiXZVxWg=";
      name = "arm_cortex-a9_neon-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a9_neon/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a9_neon/telephony/";
    sourceInfo = {
      hash = "sha256-BLBIDT96u7gNtS5IZ5LIW5VXxX5TkpcVMCVIyJ2KeZs=";
      name = "arm_cortex-a9_neon-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a9_neon/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9_neon/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
