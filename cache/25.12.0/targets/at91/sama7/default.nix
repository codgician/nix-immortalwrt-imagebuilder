# 25.12.0 at91/sama7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/at91/sama7/";
  sha256sums = {
    hash = "sha256-n5IdpFkenZib0vgTg4LQ4gPK9EGs+p07pN3/eX+RqY0=";
    name = "at91_sama7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/at91/sama7/sha256sums";
  };
  imagebuilder = {
    sha256 = "a9cf0f789cb7b821fdb4ef7dcdd144d8a422f19514a68598232663f9db01fd47";
    filename = "immortalwrt-imagebuilder-25.12.0-at91-sama7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-sZxgFAU2TgguJuJHkQ8ePxz/rN48vNWfbVVWvLHtRVk=";
    name = "at91_sama7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/at91/sama7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "e6f42815678e95b9c70b3904ed4c8a8a";
      version = "6.12.87";
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
    kmods_target = "6.12.87-1-e6f42815678e95b9c70b3904ed4c8a8a";
    profiles = {
      microchip_sama7g5-ek = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.87-1-e6f42815678e95b9c70b3904ed4c8a8a" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/at91/sama7/kmods/6.12.87-1-e6f42815678e95b9c70b3904ed4c8a8a/";
    sourceInfo = {
      hash = "sha256-rVT0fHmqzaS/7A4rcw+ok+8GSvNtIKdE0O2eiGWiSSE=";
      name = "kmods-at91_sama7-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/at91/sama7/kmods/6.12.87-1-e6f42815678e95b9c70b3904ed4c8a8a/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0/targets/at91/sama7/packages/";
    sourceInfo = {
      hash = "sha256-USTX5F+C+ilLWCi9GmDbs6RyPyYmUQaLZ4Ya+f2bL2M=";
      name = "at91_sama7-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0/targets/at91/sama7/packages/packages.adb";
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
