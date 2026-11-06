# 25.12.2 package feeds for arm_cortex-a5_vfpv4
{
  sha256sums = {
    hash = "sha256-aLVFazfjq3oD55JxDNTIHexLUsiuKc81xyCqmaRVXi0=";
    name = "arm_cortex-a5_vfpv4-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_cortex-a5_vfpv4/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_cortex-a5_vfpv4/base/";
    sourceInfo = {
      hash = "sha256-CGvMdRdcIWhNBPU17j8E1XJ7VO9T1Exz8PVBZjoj0LU=";
      name = "arm_cortex-a5_vfpv4-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_cortex-a5_vfpv4/base/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_cortex-a5_vfpv4/luci/";
    sourceInfo = {
      hash = "sha256-kaGSCULk3yCSlDJOG/esnwv8o6ZLZRq8f3Vq1QdYXrM=";
      name = "arm_cortex-a5_vfpv4-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_cortex-a5_vfpv4/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_cortex-a5_vfpv4/packages/";
    sourceInfo = {
      hash = "sha256-AGOgoB5cy4YosJ5JAUIjq36hhROwXuq6ek16FH7kd10=";
      name = "arm_cortex-a5_vfpv4-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_cortex-a5_vfpv4/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_cortex-a5_vfpv4/routing/";
    sourceInfo = {
      hash = "sha256-kgvIU0ZgvN76GTqpaeJQZKLo7DXshqPtSYluDNFpRhw=";
      name = "arm_cortex-a5_vfpv4-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_cortex-a5_vfpv4/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_cortex-a5_vfpv4/telephony/";
    sourceInfo = {
      hash = "sha256-Q0+JXeXSlKJ+cwQL8NOAMWsw1yuyB37A6fexlvCX7YU=";
      name = "arm_cortex-a5_vfpv4-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/packages/arm_cortex-a5_vfpv4/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_cortex-a5_vfpv4/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
