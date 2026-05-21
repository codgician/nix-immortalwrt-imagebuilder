# 25.12.0-rc2 package feeds for arm_fa526
{
  sha256sums = {
    hash = "sha256-NfVCrDzCoTKjjmVIr0uvBDwIlo5HNpUeB+T7Y+8OV64=";
    name = "arm_fa526-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_fa526/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_fa526/base/";
    sourceInfo = {
      hash = "sha256-0osl0emz698/0chUn9ey4CDfSXw+7INCPpm2qNOn3NA=";
      name = "arm_fa526-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_fa526/base/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_fa526/luci/";
    sourceInfo = {
      hash = "sha256-kLATrbewCYje9a7bsZFV+QoY6DNleb8VLtnW7fXpTPo=";
      name = "arm_fa526-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_fa526/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_fa526/packages/";
    sourceInfo = {
      hash = "sha256-oUhCUrzV4hxImaoqe/JBSUHz4/OD4wHjpnYQLnxf7Rs=";
      name = "arm_fa526-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_fa526/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_fa526/routing/";
    sourceInfo = {
      hash = "sha256-MoOimTYKm0g8yeN9Eued3uUhFMX7v/CdhIMN1c67po4=";
      name = "arm_fa526-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_fa526/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_fa526/telephony/";
    sourceInfo = {
      hash = "sha256-AP/zMuHCCPvNNbBmrsE94Nb41kd/zmLi9orJZQXvmvU=";
      name = "arm_fa526-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/arm_fa526/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
