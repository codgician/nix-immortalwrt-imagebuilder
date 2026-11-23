# 24.10.7 at91/sama7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/at91/sama7/";
  sha256sums = {
    hash = "sha256-2z2oqd+Sm2Gz7udyFV7LVhgiRUkLwyfAQciwgxry/Uk=";
    name = "at91_sama7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/at91/sama7/sha256sums";
  };
  imagebuilder = {
    sha256 = "499926947de2dfd1c08aca2a890d33c6f42264416c3a7027f78484f2fe9cb433";
    filename = "immortalwrt-imagebuilder-24.10.7-at91-sama7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-3UanHOnO0l/3FEabHiPpF26wEVWwAelYQzpmIyv4bbc=";
    name = "at91_sama7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/at91/sama7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "e03a21f126c20d5ef5aabbeb324aa9cf";
      version = "6.6.159";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.159-1-e03a21f126c20d5ef5aabbeb324aa9cf";
    profiles = {
      microchip_sama7g5-ek = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.6.159-1-e03a21f126c20d5ef5aabbeb324aa9cf" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/at91/sama7/kmods/6.6.159-1-e03a21f126c20d5ef5aabbeb324aa9cf/";
    sourceInfo = {
      hash = "sha256-EuGr2vHfWVJk02oafGnwtZGqP2CFPKBmseDpCQfeAMI=";
      name = "kmods-at91_sama7-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/at91/sama7/kmods/6.6.159-1-e03a21f126c20d5ef5aabbeb324aa9cf/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.7/targets/at91/sama7/packages/";
    sourceInfo = {
      hash = "sha256-+oqvgjKTxDlzMkHUT3O/O9WL+Kz9Ny4fCoMosP3LPnY=";
      name = "at91_sama7-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.7/targets/at91/sama7/packages/Packages";
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
