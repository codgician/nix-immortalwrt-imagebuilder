# 25.12.0-rc1 at91/sama7
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/at91/sama7/";
  sha256sums = {
    hash = "sha256-/vuIthBVdrJrq1mrHWHIoxC5P/sxJRFYZLfA0RIroOU=";
    name = "at91_sama7-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/at91/sama7/sha256sums";
  };
  imagebuilder = {
    sha256 = "e9b8c0ce308d3aea015c4b5591cd9e5cb6b53e03f50efccbffb897b0ed670bae";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-at91-sama7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-SKDYk8m3QPNNc1dTiiIZsH1rX+wDlyLmx8PiekiBTHQ=";
    name = "at91_sama7-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/at91/sama7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "266b7060abc2bbabe87c0894ee59eb29";
      version = "6.12.74";
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
    kmods_target = "6.12.74-1-266b7060abc2bbabe87c0894ee59eb29";
    profiles = {
      microchip_sama7g5-ek = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.74-1-266b7060abc2bbabe87c0894ee59eb29" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/at91/sama7/kmods/6.12.74-1-266b7060abc2bbabe87c0894ee59eb29/";
    sourceInfo = {
      hash = "sha256-CjWnylDbpbUvtJ5LgCT9/3SqqaAP+h84XskHcAILwEo=";
      name = "kmods-at91_sama7-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/at91/sama7/kmods/6.12.74-1-266b7060abc2bbabe87c0894ee59eb29/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/at91/sama7/packages/";
    sourceInfo = {
      hash = "sha256-as2a9GlUP27aVI5JjUrqOo0b7qzk78YZ5JWjelCBlBc=";
      name = "at91_sama7-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/at91/sama7/packages/packages.adb";
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
