# snapshot at91/sama7
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/at91/sama7/";
  sha256sums = {
    hash = "sha256-wbPeOP1Dgpi3cN9Wc4zMaij4R2tTOxHx+KDnUaN11Mw=";
    name = "at91_sama7-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/at91/sama7/sha256sums";
  };
  imagebuilder = {
    sha256 = "bcdca931902c26fd9cc36af73745202325a5bceefff1db4d8a18d9c4716ec21a";
    filename = "immortalwrt-imagebuilder-at91-sama7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-+0B1FO5OK0PQwfBimE048h/EfBb+UKwHjYPfpZTbgXw=";
    name = "at91_sama7-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/at91/sama7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "756740d0b7d5d572a3209b51a9c3c621";
      version = "6.12.67";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
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
    kmods_target = "6.12.67-1-756740d0b7d5d572a3209b51a9c3c621";
    profiles = {
      microchip_sama7g5-ek = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.67-1-756740d0b7d5d572a3209b51a9c3c621" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/at91/sama7/kmods/6.12.67-1-756740d0b7d5d572a3209b51a9c3c621/";
    sourceInfo = {
      hash = "sha256-jp/qIegqHNoC++sZW8+sJakZCHHZR5GICpdkfi2xwjs=";
      name = "kmods-at91_sama7-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/at91/sama7/kmods/6.12.67-1-756740d0b7d5d572a3209b51a9c3c621/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/at91/sama7/packages/";
    sourceInfo = {
      hash = "sha256-4TiAFW8bZx4OecKGubY14E09xXz1opJmwP7SywRQmaY=";
      name = "at91_sama7-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/at91/sama7/packages/packages.adb";
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
