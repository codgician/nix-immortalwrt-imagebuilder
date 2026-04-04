# 25.12.0-rc1 package feeds for powerpc_464fp
{
  sha256sums = {
    hash = "sha256-mScZ1FpuxOAega8IWVIXfh/ZbCp0dXNiUAbQsuPyrkw=";
    name = "powerpc_464fp-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_464fp/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_464fp/base/";
    sourceInfo = {
      hash = "sha256-WffX+oAFkXoQb5gLu5A1MNTRLZvEM5vorIYdgCL8n58=";
      name = "powerpc_464fp-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_464fp/base/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_464fp/luci/";
    sourceInfo = {
      hash = "sha256-cdFarfChO41gswQAo/IXZFWYMCcLInxpK8u5mfxEAJw=";
      name = "powerpc_464fp-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_464fp/luci/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_464fp/packages/";
    sourceInfo = {
      hash = "sha256-fKgysAw0DUmUxHkM6O6WTDqgyIseGoVSgyqgvrJHtTk=";
      name = "powerpc_464fp-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_464fp/packages/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_464fp/routing/";
    sourceInfo = {
      hash = "sha256-PZ5t8gQYu1taUS3mVI+eCJH3XgiZG4fn8kOPI1yknMI=";
      name = "powerpc_464fp-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_464fp/routing/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_464fp/telephony/";
    sourceInfo = {
      hash = "sha256-dBZzdUVsAMXnJEpMq6M26596gvu7BDY3u21FAHgy/SY=";
      name = "powerpc_464fp-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/packages/powerpc_464fp/telephony/packages.adb";
    };
    packages =
      let
        p = ./powerpc_464fp/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
