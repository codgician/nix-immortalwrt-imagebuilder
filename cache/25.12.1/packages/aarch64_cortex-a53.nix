# 25.12.1 package feeds for aarch64_cortex-a53
{
  sha256sums = {
    hash = "sha256-1tGpfMyAuWQuFvUe/uwDpf8+YFAmf+CmJi9ZjiM8Wu8=";
    name = "aarch64_cortex-a53-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a53/sha256sums";
  };
  feeds."base" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a53/base/";
    sourceInfo = {
      hash = "sha256-SjbQZYwT2zyJNOgqM722PnAtGzAa3dNyUDFHQ0Q/oxw=";
      name = "aarch64_cortex-a53-base-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a53/base/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/base.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."luci" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a53/luci/";
    sourceInfo = {
      hash = "sha256-86dhYQ5mrJ2AP+RxrqQC4DSMeBG0bHGNorXa2atQKxk=";
      name = "aarch64_cortex-a53-luci-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a53/luci/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/luci.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."packages" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a53/packages/";
    sourceInfo = {
      hash = "sha256-jIbB70CrcE5tlTXsfI2/pS2fblQVPd7LMPmoV1eyzqk=";
      name = "aarch64_cortex-a53-packages-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a53/packages/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."routing" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a53/routing/";
    sourceInfo = {
      hash = "sha256-IJWHUud6nTx2eE3JetLu5gx6hJy3JL1XcDhQEC4VY8w=";
      name = "aarch64_cortex-a53-routing-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a53/routing/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/routing.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  feeds."telephony" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a53/telephony/";
    sourceInfo = {
      hash = "sha256-bBRhFxR4VgMOaVGZIXcZy4BFsQY8XIs/1lx5mnNf4qs=";
      name = "aarch64_cortex-a53-telephony-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/packages/aarch64_cortex-a53/telephony/packages.adb";
    };
    packages =
      let
        p = ./aarch64_cortex-a53/telephony.nix;
      in
      if builtins.pathExists p then import p else null;
  };
}
