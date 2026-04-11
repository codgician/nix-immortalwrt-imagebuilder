# 25.12.0-rc1 package feeds for mips64_octeonplus
{
  sha256sums = {
    hash = "sha256-SSO8T/avhOoL4IT+N7fYukTgW300nT4FOlb4JEgFvec=";
    name = "mips64_octeonplus-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/base/";
    sourceInfo = {
      hash = "sha256-lJObwlUPYXmit5Ne2Md3LawU0GGo3+OVrrDqcPbndd4=";
      name = "mips64_octeonplus-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/base/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/luci/";
    sourceInfo = {
      hash = "sha256-Yl9J2uRuKmNwQ1/nhDG829vuGY7bSUKcIxnBnsYsHa4=";
      name = "mips64_octeonplus-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/luci/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/packages/";
    sourceInfo = {
      hash = "sha256-KOsiMFVdrCI7AtkiaVqyVfA86vyi/1ph0XchX4zPns8=";
      name = "mips64_octeonplus-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/packages/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/routing/";
    sourceInfo = {
      hash = "sha256-0RX2Gwf2VpUChkIAP7rzY+rt93bCuGp1ydevJxe1kwo=";
      name = "mips64_octeonplus-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/routing/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/telephony/";
    sourceInfo = {
      hash = "sha256-JzG5bbU0t3gA6jgAh2sJM0xN9p/xCXtlz8tAUzrle3k=";
      name = "mips64_octeonplus-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/mips64_octeonplus/telephony/packages.adb";
    };
    packages =
      let
        p = ./mips64_octeonplus/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
