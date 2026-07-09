# 25.12.1 package feeds for arm_cortex-a7
{
  sha256sums = {
    hash = "sha256-vqNX1DfiYMVn5AP8uTs/QTjS0n9ETTGX0IGZdep01wY=";
    name = "arm_cortex-a7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_cortex-a7/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/arm_cortex-a7/base/";
    sourceInfo = {
      hash = "sha256-05P+nC6sYGXetxlB1pjLyTW6Thte/67qv1YrVet2M/A=";
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
      hash = "sha256-3ycBIXuS3ZzTonH3hO/buWrZWu2+Xgry5XbPUrb37Bw=";
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
      hash = "sha256-xuTEYToTpTLME619AtXGehquFM2k5+r/DM/Uyj3Ngbk=";
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
      hash = "sha256-tIfGcNcuDHX5HAAYzI3Cqf8JzjkJ3Je0s83O1z79IrI=";
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
      hash = "sha256-bKfQBjmtmzDR1nXTrXbXdobxrIhrxJFzFeAXXlmbUsw=";
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
