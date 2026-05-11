# 24.10.2 package feeds for x86_64
{
  sha256sums = {
    hash = "sha256-7iXh74z521nqICmt6X3tbHx6ESPD8OoNc5qzrgr8kCA=";
    name = "x86_64-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/x86_64/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/x86_64/base/";
    sourceInfo = {
      hash = "sha256-S28GAc5+7nLnEFoHjgUXIK7P0TiDbrJSkgGHMqh9BdE=";
      name = "x86_64-base-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/x86_64/base/Packages";
    };
    packages =
      let
        p = ./x86_64/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/x86_64/luci/";
    sourceInfo = {
      hash = "sha256-LVgh/hV7QrkvpIvN37Y3cQogPqL2bDBMBTXRPb7tY90=";
      name = "x86_64-luci-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/x86_64/luci/Packages";
    };
    packages =
      let
        p = ./x86_64/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/x86_64/packages/";
    sourceInfo = {
      hash = "sha256-RCobf4ky+xFSzFN9SRcI2YuTqJrudhu10VB9yZdSZm8=";
      name = "x86_64-packages-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/x86_64/packages/Packages";
    };
    packages =
      let
        p = ./x86_64/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/x86_64/routing/";
    sourceInfo = {
      hash = "sha256-EUH0K1n3rE5oy9urkiGBkP02Mpxmk0pIkhOoqRQ2Xb0=";
      name = "x86_64-routing-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/x86_64/routing/Packages";
    };
    packages =
      let
        p = ./x86_64/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/packages/x86_64/telephony/";
    sourceInfo = {
      hash = "sha256-eTQL62ttrWd4FKfWfpZVU9+F5pMXs/cS0wVlQiJXOcU=";
      name = "x86_64-telephony-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/packages/x86_64/telephony/Packages";
    };
    packages =
      let
        p = ./x86_64/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
