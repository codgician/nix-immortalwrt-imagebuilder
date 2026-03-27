# 25.12.0-rc1 package feeds for mipsel_74kc
{
  sha256sums = {
    hash = "sha256-2+XcLRzE2MoKpI6Zoa8IQ0R1gFQ/cXPbNgn4Fl64J5E=";
    name = "mipsel_74kc-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_74kc/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_74kc/base/";
    sourceInfo = {
      hash = "sha256-Z9O6VQqJJGFsUNcsEQNDmWgRlDWTvDwXBQMdF0OjHKc=";
      name = "mipsel_74kc-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_74kc/base/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_74kc/luci/";
    sourceInfo = {
      hash = "sha256-hGw9aSHpLs+/Nqrip7H6AgLc8z8gzf9/pqewFTtrrOA=";
      name = "mipsel_74kc-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_74kc/luci/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_74kc/packages/";
    sourceInfo = {
      hash = "sha256-NxZLisjZzomYfSOOrnyEQ96PFKnEVSEmnCxnNlsp8/U=";
      name = "mipsel_74kc-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_74kc/packages/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_74kc/routing/";
    sourceInfo = {
      hash = "sha256-y6Ukw895lsfBVh4H1s5QWPP6om7CzmkCpmqDgXmTY1g=";
      name = "mipsel_74kc-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_74kc/routing/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_74kc/telephony/";
    sourceInfo = {
      hash = "sha256-OFNVH0F1RYrT4legf5ZtFCVHdEpISAim8m/3OFGb1qc=";
      name = "mipsel_74kc-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_74kc/telephony/packages.adb";
    };
    packages =
      let
        p = ./mipsel_74kc/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
