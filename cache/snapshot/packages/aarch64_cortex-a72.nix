# snapshot package feeds for aarch64_cortex-a72
{
  sha256sums = {
    hash = "sha256-/rK4pqWLKrkCJhIAqdJBLccm42nkhc1FoEfI09+Xz/Y=";
    name = "aarch64_cortex-a72-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a72/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a72/base/";
    sourceInfo = {
      hash = "sha256-Z4gh75bH4V3PUGbFzbWirpNlOaltxGythJrp4nshx1M=";
      name = "aarch64_cortex-a72-base-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a72/base/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a72/luci/";
    sourceInfo = {
      hash = "sha256-LwW5+bHKIIaBm7e+zgObIQOCzdqKlLTNIcbf7dbwamk=";
      name = "aarch64_cortex-a72-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a72/luci/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a72/packages/";
    sourceInfo = {
      hash = "sha256-1yrg7uV0MKqrfI0r26oV59ctf+k0i+g0B/PJnZ9pcMk=";
      name = "aarch64_cortex-a72-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a72/packages/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a72/routing/";
    sourceInfo = {
      hash = "sha256-kIEgKgAqG3FqeqyrWkC44tltlRxnbmgM2UOHg1nIUys=";
      name = "aarch64_cortex-a72-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a72/routing/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a72/telephony/";
    sourceInfo = {
      hash = "sha256-EvjYqgpYFPEEfPHjNqEsRMM1pfX3YCdxVZ+N+T9zDcI=";
      name = "aarch64_cortex-a72-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/packages/aarch64_cortex-a72/telephony/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a72/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
