# 25.12.0 package feeds for arm_cortex-a9
{
  sha256sums = {
    hash = "sha256-E8/qlQufONPGeZJsyhoTZ/8RODYiICK/9Zwn5FFu1Gk=";
    name = "arm_cortex-a9-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9/base/";
    sourceInfo = {
      hash = "sha256-eQmo8TzWmmJFRKj4Kaa7XrKVUon+f/OIzWD4G+GpoOU=";
      name = "arm_cortex-a9-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9/luci/";
    sourceInfo = {
      hash = "sha256-hNtLVleNCyvacp9S6CwnCZDpGew3fa0elUifQm25UpM=";
      name = "arm_cortex-a9-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9/packages/";
    sourceInfo = {
      hash = "sha256-jTnO2+pTbQeccIRUIvSeZ45tHla0fl77zRvKCYVV+vk=";
      name = "arm_cortex-a9-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9/routing/";
    sourceInfo = {
      hash = "sha256-YMYRjMIQW67rYotl410jkmVNq6OTAhADaAeiNBcNa1o=";
      name = "arm_cortex-a9-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9/telephony/";
    sourceInfo = {
      hash = "sha256-DpfCFJiZFeypqKFfrdPbgPYfZIblV2iIZrM3z50HGUg=";
      name = "arm_cortex-a9-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/arm_cortex-a9/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a9/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
