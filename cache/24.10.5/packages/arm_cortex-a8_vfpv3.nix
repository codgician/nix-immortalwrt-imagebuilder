# 24.10.5 package feeds for arm_cortex-a8_vfpv3
{
  sha256sums = {
    hash = "sha256-Hyo+Sms7zyf3Guq+CdW0K8e8g/Fv7XcyuAonrK7kEfk=";
    name = "arm_cortex-a8_vfpv3-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a8_vfpv3/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a8_vfpv3/base/";
    sourceInfo = {
      hash = "sha256-UCPKkmQlG25bf2EhXCGFvXa/faWWDllGU5asFxxUQ7k=";
      name = "arm_cortex-a8_vfpv3-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a8_vfpv3/base/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a8_vfpv3/luci/";
    sourceInfo = {
      hash = "sha256-xfjrHTtu8UW8PqYaAyGZKeA4oWv3jE99OkzRqaGVybU=";
      name = "arm_cortex-a8_vfpv3-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a8_vfpv3/luci/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a8_vfpv3/packages/";
    sourceInfo = {
      hash = "sha256-yk1Hms1DmOGt0KVAmcSFqXSdX6P2PLg41IpRySOcQSM=";
      name = "arm_cortex-a8_vfpv3-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a8_vfpv3/packages/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a8_vfpv3/routing/";
    sourceInfo = {
      hash = "sha256-lHAj7CBXv723IEFkee+9O4JpBj3MRKtV35k/eEf54JI=";
      name = "arm_cortex-a8_vfpv3-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a8_vfpv3/routing/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a8_vfpv3/telephony/";
    sourceInfo = {
      hash = "sha256-VR/8ROSWRvXoPgqTnl11E4od3k6ZUvCSC9ZA2AsjovQ=";
      name = "arm_cortex-a8_vfpv3-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.5/packages/arm_cortex-a8_vfpv3/telephony/Packages";
    };
    packages =
      let
        p = ./arm_cortex-a8_vfpv3/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
