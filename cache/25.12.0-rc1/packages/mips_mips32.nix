# 25.12.0-rc1 package feeds for mips_mips32
{
  sha256sums = {
    hash = "sha256-bQYavZbhjPwlHy6G4wokhia00v8EsNH8CK21agweZ/k=";
    name = "mips_mips32-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_mips32/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_mips32/base/";
    sourceInfo = {
      hash = "sha256-HNd8IieTK+WMcAP5tklBclFxkv/c3sfC75Wcq1ZmQ8U=";
      name = "mips_mips32-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_mips32/base/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_mips32/luci/";
    sourceInfo = {
      hash = "sha256-lvA9Cpiibo2ptlExFSWJS59HnvlCSDoREW1ngf3rqLo=";
      name = "mips_mips32-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_mips32/luci/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_mips32/packages/";
    sourceInfo = {
      hash = "sha256-SGoKqRqmIew0BiKW4LYR2NyBS54HGM4YU6jz/G4O/kc=";
      name = "mips_mips32-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_mips32/packages/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_mips32/routing/";
    sourceInfo = {
      hash = "sha256-7O+zEbHmMRhClFYWKzS1DOe/arTYMDUeuzu9Pi2zaUU=";
      name = "mips_mips32-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_mips32/routing/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_mips32/telephony/";
    sourceInfo = {
      hash = "sha256-dKi1vpFZ1AWTyScJiwAFeEdW5nLXzL6V/gBvA5eOGig=";
      name = "mips_mips32-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips_mips32/telephony/packages.adb";
    };
    packages =
      let
        p = ./mips_mips32/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
