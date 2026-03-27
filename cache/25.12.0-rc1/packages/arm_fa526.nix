# 25.12.0-rc1 package feeds for arm_fa526
{
  sha256sums = {
    hash = "sha256-sYAS+NSpOUsRIsHfDmkbxjItTBeMNPplZ3le3ixmWMA=";
    name = "arm_fa526-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_fa526/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_fa526/base/";
    sourceInfo = {
      hash = "sha256-yvl/H+s3/CMf5K2JCsBk3HDNbtv6cC49eTkEY7cTOF0=";
      name = "arm_fa526-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_fa526/base/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_fa526/luci/";
    sourceInfo = {
      hash = "sha256-/fKSQyVXUhmeCDAssVjcpIk1jG/Qx0ie24ggPJ3DjyA=";
      name = "arm_fa526-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_fa526/luci/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_fa526/packages/";
    sourceInfo = {
      hash = "sha256-u0CzlSc2QibWE25tCm+rG/L37m7NDWS84+a0g/GN7HM=";
      name = "arm_fa526-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_fa526/packages/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_fa526/routing/";
    sourceInfo = {
      hash = "sha256-Fq0+RDWbDJwb66wT5hbyD6J8QwfOwxc7QP4/vy27mCY=";
      name = "arm_fa526-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_fa526/routing/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_fa526/telephony/";
    sourceInfo = {
      hash = "sha256-gcK6TlvHAnM8+TWIoPp6q+xIJ5QcGNX/uKZ0loZvLzk=";
      name = "arm_fa526-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/arm_fa526/telephony/packages.adb";
    };
    packages =
      let
        p = ./arm_fa526/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
