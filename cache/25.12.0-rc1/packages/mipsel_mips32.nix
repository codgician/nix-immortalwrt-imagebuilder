# 25.12.0-rc1 package feeds for mipsel_mips32
{
  sha256sums = {
    hash = "sha256-scRMWQ9dbp/Y0bPyryt37nkvQG7c3bmjKqzrPdw7bXI=";
    name = "mipsel_mips32-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_mips32/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_mips32/base/";
    sourceInfo = {
      hash = "sha256-HZDcxT3PGYAjOkYTydrq5ALv5j/pUjYK8J44iW27Dkc=";
      name = "mipsel_mips32-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_mips32/base/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_mips32/luci/";
    sourceInfo = {
      hash = "sha256-IM9lLw747KPYQ6ZhMXuhWQvz7QujByvr0MDD7tBohmU=";
      name = "mipsel_mips32-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_mips32/luci/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_mips32/packages/";
    sourceInfo = {
      hash = "sha256-3VSzloIB60K0ltifoFSUjJFAyITTXe5RRsYEbTvcYGs=";
      name = "mipsel_mips32-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_mips32/packages/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_mips32/routing/";
    sourceInfo = {
      hash = "sha256-jhJ16KBOzKZJpzVf4UnMUSWYi569FVjHdPE3D9rhCf0=";
      name = "mipsel_mips32-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_mips32/routing/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_mips32/telephony/";
    sourceInfo = {
      hash = "sha256-+foYocPE0zPGICqwkEpv6CFdSRBD/3GTMyFo0kspLgA=";
      name = "mipsel_mips32-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mipsel_mips32/telephony/packages.adb";
    };
    packages =
      let
        p = ./mipsel_mips32/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
