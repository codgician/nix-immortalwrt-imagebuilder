# 25.12.1 package feeds for powerpc_8548
{
  sha256sums = {
    hash = "sha256-hZYPKQCndUC/dGvy12U6t7qxINnPQWDh9dlrRIYE7M8=";
    name = "powerpc_8548-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc_8548/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc_8548/base/";
    sourceInfo = {
      hash = "sha256-85dvBX2Ewx3HVzS75mvUGpT2Ss28mPWhkKRrLmHQrhw=";
      name = "powerpc_8548-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc_8548/base/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc_8548/luci/";
    sourceInfo = {
      hash = "sha256-gd7VaWg3VVafeFnmJkOgyZkiGfO5hEQvfKD5BD1e3bw=";
      name = "powerpc_8548-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc_8548/luci/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc_8548/packages/";
    sourceInfo = {
      hash = "sha256-GmLp2ed7U2EpFY/WPAlto5ZdgHh9unimMgo0KVDm3KE=";
      name = "powerpc_8548-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc_8548/packages/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc_8548/routing/";
    sourceInfo = {
      hash = "sha256-p/yagtFDR5pWB+7DabFJ8TSg9YwIMRUmUHutEYSdoY8=";
      name = "powerpc_8548-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc_8548/routing/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc_8548/telephony/";
    sourceInfo = {
      hash = "sha256-+sxaGP0VB8dIg0W5eFiIKM6/hpsSi1peiEvyaAe3yBM=";
      name = "powerpc_8548-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/powerpc_8548/telephony/packages.adb";
    };
    packages =
      let
        p = ./powerpc_8548/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
