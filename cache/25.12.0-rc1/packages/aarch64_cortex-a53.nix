# 25.12.0-rc1 package feeds for aarch64_cortex-a53
{
  sha256sums = {
    hash = "sha256-or2VhSZF0lR8Xa0/bWagwQu5I3nit2Wt4Y8plm4MMWU=";
    name = "aarch64_cortex-a53-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a53/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a53/base/";
    sourceInfo = {
      hash = "sha256-uoXCl99Vt3jV1K7HxTkHtkN7k3eq3rbdz6E0K2F5NkA=";
      name = "aarch64_cortex-a53-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a53/base/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a53/luci/";
    sourceInfo = {
      hash = "sha256-f2uwfVmhx0A2A6BDZ5r8urYxZp4/s7odGH5dOC7eqto=";
      name = "aarch64_cortex-a53-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a53/luci/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a53/packages/";
    sourceInfo = {
      hash = "sha256-1Nu7gKJK/MCARhLx9SM6zdrSZ8e+TUHjuOaWWeRDUVg=";
      name = "aarch64_cortex-a53-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a53/packages/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a53/routing/";
    sourceInfo = {
      hash = "sha256-OXNvlZbnwC5Q8OrlA72pQFWaT/vl9UDZ0c+SJBuGhNI=";
      name = "aarch64_cortex-a53-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a53/routing/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a53/telephony/";
    sourceInfo = {
      hash = "sha256-Xx1dQOL6v3YH5T9GiXPcgggdXm+rIfY9Z44Yk1aHrb0=";
      name = "aarch64_cortex-a53-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/aarch64_cortex-a53/telephony/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
