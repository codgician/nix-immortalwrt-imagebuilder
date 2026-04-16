# 25.12.0-rc2 at91/sama7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/at91/sama7/";
  sha256sums = {
    hash = "sha256-qSI1I6d0blevgSDouJPRESNqB5YbxJ+vhtKYLf8DSRM=";
    name = "at91_sama7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/at91/sama7/sha256sums";
  };
  imagebuilder = {
    sha256 = "c47a4184b46ecacfe783bcdc2d9310b91f24c790a95ff3c575b490bb6630f7a8";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-at91-sama7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-gb9N9TdxGjChAlfV/MJCZPsUAEGKYeTZpbnGeGuy6fA=";
    name = "at91_sama7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/at91/sama7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "a0ade7b6891be1fbfec9145f0d725010";
      version = "6.12.79";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.79-1-a0ade7b6891be1fbfec9145f0d725010";
    profiles = {
      microchip_sama7g5-ek = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.79-1-a0ade7b6891be1fbfec9145f0d725010" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/at91/sama7/kmods/6.12.79-1-a0ade7b6891be1fbfec9145f0d725010/";
    sourceInfo = {
      hash = "sha256-cb16gks32urULwAxhYtklz8UYq09bGY7DgU4HitiVLA=";
      name = "kmods-at91_sama7-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/at91/sama7/kmods/6.12.79-1-a0ade7b6891be1fbfec9145f0d725010/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/at91/sama7/packages/";
    sourceInfo = {
      hash = "sha256-T8FLrKb08IbumaJtoW26kQkRu9nDpNfJoJrVSvG4xFo=";
      name = "at91_sama7-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/at91/sama7/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "arm_cortex-a7_vfpv4";
  feeds = import ./../../../packages/arm_cortex-a7_vfpv4.nix;
}
