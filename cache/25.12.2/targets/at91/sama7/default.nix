# 25.12.2 at91/sama7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/at91/sama7/";
  sha256sums = {
    hash = "sha256-4ySxqJ1bBC+1MzWu2HBcWQMdJMyLu5NK3aLBBqbNtkA=";
    name = "at91_sama7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/at91/sama7/sha256sums";
  };
  imagebuilder = {
    sha256 = "8e581dacb39746e522186de46f7de6cabe235dc06e355cdfe3e90ca83fddc1c7";
    filename = "immortalwrt-imagebuilder-25.12.2-at91-sama7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-BFJicw0sqeWHleqpfa+CQ7xr4Z1zKliDVyn0G0GKncA=";
    name = "at91_sama7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/at91/sama7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "aae5446cb482dfb4a9fc6da0043d1dd5";
      version = "6.12.103";
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
    kmods_target = "6.12.103-1-aae5446cb482dfb4a9fc6da0043d1dd5";
    profiles = {
      microchip_sama7g5-ek = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.103-1-aae5446cb482dfb4a9fc6da0043d1dd5" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/at91/sama7/kmods/6.12.103-1-aae5446cb482dfb4a9fc6da0043d1dd5/";
    sourceInfo = {
      hash = "sha256-dK3JI+Ay5stw/gHDyOD/R1cRLie0sgnC8yp1xg7L7uU=";
      name = "kmods-at91_sama7-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/at91/sama7/kmods/6.12.103-1-aae5446cb482dfb4a9fc6da0043d1dd5/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/at91/sama7/packages/";
    sourceInfo = {
      hash = "sha256-NurGqM7PdZeuwyYV93g4yG0kcG+totpQNLOo/TGoqUM=";
      name = "at91_sama7-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/at91/sama7/packages/packages.adb";
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
