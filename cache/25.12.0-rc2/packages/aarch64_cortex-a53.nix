# 25.12.0-rc2 package feeds for aarch64_cortex-a53
{
  sha256sums = {
    hash = "sha256-Spv1YVv2OhsHw6+9qqpi0z9H+ltIporQOgAMhjAvHI0=";
    name = "aarch64_cortex-a53-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a53/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a53/base/";
    sourceInfo = {
      hash = "sha256-mtScYbH9fHJ6D+SxMHVdcqO6rHyohQVeRhCrezTpPBk=";
      name = "aarch64_cortex-a53-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a53/base/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a53/luci/";
    sourceInfo = {
      hash = "sha256-kef77PhQucDz/bn8s5LhiZr8o7Zc8PJixwBT6owdUfM=";
      name = "aarch64_cortex-a53-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a53/luci/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a53/packages/";
    sourceInfo = {
      hash = "sha256-I+19TwWcXNN8NP9eyH5ZLbBkhCyFsTHAkm2rDvp9Sks=";
      name = "aarch64_cortex-a53-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a53/packages/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a53/routing/";
    sourceInfo = {
      hash = "sha256-CEu0CNbVbJWqk8u5xyVaoiDIma8IKkViUsd/0bo3Ufc=";
      name = "aarch64_cortex-a53-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a53/routing/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a53/telephony/";
    sourceInfo = {
      hash = "sha256-4KI5TLJYLpr/daWtfuCSieb/sNF9ZH9TTCAMRmETIMo=";
      name = "aarch64_cortex-a53-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/aarch64_cortex-a53/telephony/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
