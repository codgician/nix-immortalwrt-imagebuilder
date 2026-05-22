# snapshot at91/sama7
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama7/";
  sha256sums = {
    hash = "sha256-V2aO1K29BLCRwlWYdsmlNXr29guUtvIy3y+kWQZMXcY=";
    name = "at91_sama7-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama7/sha256sums";
  };
  imagebuilder = {
    sha256 = "334b954b2b6b81e6f41532b42c32e7e5610cff6d6e2cd78b3816b3f81bd46ca8";
    filename = "immortalwrt-imagebuilder-at91-sama7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-OO8gyZ78Zsw11GX8Ae6odJqCZd7ZO8yhWnbZ+Y63CIo=";
    name = "at91_sama7-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "82799819238be682cd63b830e982cf6c";
      version = "6.12.89";
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
    kmods_target = "6.12.89-1-82799819238be682cd63b830e982cf6c";
    profiles = {
      microchip_sama7g5-ek = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.89-1-82799819238be682cd63b830e982cf6c" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama7/kmods/6.12.89-1-82799819238be682cd63b830e982cf6c/";
    sourceInfo = {
      hash = "sha256-Wnyya1MDTTuae2ccb2usO3Rb9AgF/+ukF2iS83C4a08=";
      name = "kmods-at91_sama7-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama7/kmods/6.12.89-1-82799819238be682cd63b830e982cf6c/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama7/packages/";
    sourceInfo = {
      hash = "sha256-RCH0Y60r1bz+JQq/jeMwTy4pOaD/ffd8BAnpEFxZHYk=";
      name = "at91_sama7-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama7/packages/packages.adb";
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
