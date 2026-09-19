# snapshot at91/sama7
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama7/";
  sha256sums = {
    hash = "sha256-tlBMSvFs4RUcLYJxZeuJrLZTi0a1DIa3UdH3jhpquro=";
    name = "at91_sama7-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama7/sha256sums";
  };
  imagebuilder = {
    sha256 = "8559c6d2322b6fa54a4a72a122ce5c5c9358bf9997bcf1f2e97495315fa7d436";
    filename = "immortalwrt-imagebuilder-at91-sama7.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-EKEwmgVnVNQ7pc7UB8W10+2lu8DyqltN+EmIkv4kdgI=";
    name = "at91_sama7-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama7/profiles.json";
  };
  profiles.extract = {
    arch_packages = "arm_cortex-a7_vfpv4";
    linux_kernel = {
      release = "1";
      vermagic = "f3d44d10c5ca5448e2cc904e58af14b0";
      version = "6.12.108";
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
    kmods_target = "6.12.108-1-f3d44d10c5ca5448e2cc904e58af14b0";
    profiles = {
      microchip_sama7g5-ek = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.108-1-f3d44d10c5ca5448e2cc904e58af14b0" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama7/kmods/6.12.108-1-f3d44d10c5ca5448e2cc904e58af14b0/";
    sourceInfo = {
      hash = "sha256-wm9+TZrd+LawfBbzlpnieuCWHMsYRZYVP7tgFI7+myg=";
      name = "kmods-at91_sama7-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/at91/sama7/kmods/6.12.108-1-f3d44d10c5ca5448e2cc904e58af14b0/packages.adb";
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
      hash = "sha256-twhphMUo1Mg5u3OwNO5xhL+spBRYqNHCYJ6qs24xXvk=";
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
