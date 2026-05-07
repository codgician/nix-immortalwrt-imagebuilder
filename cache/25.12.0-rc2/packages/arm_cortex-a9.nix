# 25.12.0-rc2 package feeds for arm_cortex-a9
{
  sha256sums = {
    hash = "sha256-POmsLhPVXMI1EAf/7P6G9yNURgslaIZJ8PhqpYT+KzI=";
    name = "arm_cortex-a9-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a9/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a9/base/";
    sourceInfo = {
      hash = "sha256-aBUC2ILhFHzB6PqXI8xOlNF17LTAAaps57KDh3Pd+Wc=";
      name = "arm_cortex-a9-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a9/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a9/luci/";
    sourceInfo = {
      hash = "sha256-ac28Fk0fIwVASRBgLA0lMMa9KKH8f5Vdw0lfkdFYLlQ=";
      name = "arm_cortex-a9-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a9/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a9/packages/";
    sourceInfo = {
      hash = "sha256-irm6PefZNXnKPu/smxhfRmAC3yhmSn5cG+nn5dCmCeA=";
      name = "arm_cortex-a9-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a9/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a9/routing/";
    sourceInfo = {
      hash = "sha256-wGcX1vlYM05ZTiBH7ZEn+FVO7mJoew/G030Ukn3Ef/I=";
      name = "arm_cortex-a9-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a9/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a9/telephony/";
    sourceInfo = {
      hash = "sha256-7iGuzk7B1Hj4kr42jie5txqRs6WsEbRzQYhuHK8XfYs=";
      name = "arm_cortex-a9-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_cortex-a9/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
