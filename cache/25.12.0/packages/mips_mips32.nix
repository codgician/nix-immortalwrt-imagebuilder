# 25.12.0 package feeds for mips_mips32
{
  sha256sums = {
    hash = "sha256-adfEjmBGfvKT9xR77RkoBqq5/5lqbqVzY8hlK3NfMI0=";
    name = "mips_mips32-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_mips32/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_mips32/base/";
    sourceInfo = {
      hash = "sha256-qZbMKGjI6Mfhaffo+kKaz/nQf4FuuWr+sv8zvOYU01c=";
      name = "mips_mips32-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_mips32/base/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_mips32/luci/";
    sourceInfo = {
      hash = "sha256-3IbSH4iyve5Ac5OuZfMz4dX/wgoM69221K3D5ND+FSU=";
      name = "mips_mips32-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_mips32/luci/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_mips32/packages/";
    sourceInfo = {
      hash = "sha256-9YqVVjc8iejsyZiB+1te83LrUdQ4Ou9cD1K/5Vvkj6c=";
      name = "mips_mips32-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_mips32/packages/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_mips32/routing/";
    sourceInfo = {
      hash = "sha256-kFTw7BdEMJAhEYV1+Ef+w8Crzn021cK4JJMrkn6eMXY=";
      name = "mips_mips32-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_mips32/routing/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_mips32/telephony/";
    sourceInfo = {
      hash = "sha256-+OaVqj5FLXAFKZN1TjHmxvOwX9YzC99xPz5IrTBt2kM=";
      name = "mips_mips32-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/packages/mips_mips32/telephony/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
