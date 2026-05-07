# 25.12.0-rc2 package feeds for x86_64
{
  sha256sums = {
    hash = "sha256-mS3jNdTlvOUUtVXXhLecJ3rDM97W7NNPrG+olcipf/8=";
    name = "x86_64-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/x86_64/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/x86_64/base/";
    sourceInfo = {
      hash = "sha256-eNnpGpDcOCS8/8ZZfXEsrCmA41gvjzztZ32OdypPnGs=";
      name = "x86_64-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/x86_64/base/packages.adb";
    };
    packages =
      let
        p = ./x86_64/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/x86_64/luci/";
    sourceInfo = {
      hash = "sha256-Jxa2Wt0WLP4ehnYvuZ8dUOaLfyEZJ/hViTDaOZ1/mtM=";
      name = "x86_64-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/x86_64/luci/packages.adb";
    };
    packages =
      let
        p = ./x86_64/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/x86_64/packages/";
    sourceInfo = {
      hash = "sha256-UhGShCeJfa3EXR8CzGiP9RFF4nPl8TDmW8RXpnB0v5U=";
      name = "x86_64-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/x86_64/packages/packages.adb";
    };
    packages =
      let
        p = ./x86_64/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/x86_64/routing/";
    sourceInfo = {
      hash = "sha256-LX4MhDfkxPKXlbN4Z3/vo06XToZn9YJEnowU762Lpdw=";
      name = "x86_64-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/x86_64/routing/packages.adb";
    };
    packages =
      let
        p = ./x86_64/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/x86_64/telephony/";
    sourceInfo = {
      hash = "sha256-O7ig70OPBBfeWIxbQ9MVnTtcIUJ9ID84rXwh7TeVlkE=";
      name = "x86_64-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/packages/x86_64/telephony/packages.adb";
    };
    packages =
      let
        p = ./x86_64/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
