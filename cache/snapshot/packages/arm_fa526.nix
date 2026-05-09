# snapshot package feeds for arm_fa526
{
  sha256sums = {
    hash = "sha256-dPeZMvoOpet7hCSt0Wzh89RFf7re9hM+UbiO905k3Ck=";
    name = "arm_fa526-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/arm_fa526/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_fa526/base/";
    sourceInfo = {
      hash = "sha256-Kg8kLg3HFOClOI38AIkiFEImHtYYU2YAdPJzQ3N4VKE=";
      name = "arm_fa526-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_fa526/base/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_fa526/luci/";
    sourceInfo = {
      hash = "sha256-ePBXkfp+fj+BJdco8Y5ODbeVl4s+POSdCH9q/k/GL7A=";
      name = "arm_fa526-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_fa526/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_fa526/packages/";
    sourceInfo = {
      hash = "sha256-IGOiybIichx/nHc63tHZrpAkFDO0ioekcVNUG6+K07c=";
      name = "arm_fa526-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_fa526/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_fa526/routing/";
    sourceInfo = {
      hash = "sha256-/2GOguPXSEn6TvqMv6zPakYdtN9VCfrApffzA93mF3Y=";
      name = "arm_fa526-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_fa526/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/arm_fa526/telephony/";
    sourceInfo = {
      hash = "sha256-r3FtO1B7JwH8FDIsQyISFS1h/KeD9pO7P7+cK7vMh2Y=";
      name = "arm_fa526-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/arm_fa526/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
