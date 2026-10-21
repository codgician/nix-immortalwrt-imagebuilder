# snapshot siflower/sf21
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/siflower/sf21/";
  sha256sums = {
    hash = "sha256-MD1dP18FfRvVhlUsIRbdgr6AWp/EcplecL3ozitG83E=";
    name = "siflower_sf21-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/siflower/sf21/sha256sums";
  };
  imagebuilder = {
    sha256 = "5787ec8f47d4781e95817422c2e54e8626d54ce82c5636113beeb40b68eb1a67";
    filename = "immortalwrt-imagebuilder-siflower-sf21.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-pXg4QoRjRpTRvKZ/b7H7L8vf+6WBI/nHRJRiQeX4XRY=";
    name = "siflower_sf21-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/siflower/sf21/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "0b4acd1426a7242f563d65a448bb670a";
      version = "6.18.55";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fitblk"
      "fstools"
      "kmod-gpio-button-hotplug"
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
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.18.55-1-0b4acd1426a7242f563d65a448bb670a";
    profiles = {
      bananapi_bpi-rv2-nand = {
        device_packages = [
          "kmod-usb-dwc2"
          "kmod-phy-sf21-usb"
          "kmod-phy-airoha-en8811h"
          "kmod-rtc-pcf8563"
          "kmod-i2c-designware-platform"
        ];
      };
      bananapi_bpi-rv2-nor = {
        device_packages = [
          "kmod-usb-dwc2"
          "kmod-phy-sf21-usb"
          "kmod-phy-airoha-en8811h"
          "kmod-rtc-pcf8563"
          "kmod-i2c-designware-platform"
        ];
      };
    };
  };
  kmods."6.18.55-1-0b4acd1426a7242f563d65a448bb670a" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/siflower/sf21/kmods/6.18.55-1-0b4acd1426a7242f563d65a448bb670a/";
    sourceInfo = {
      hash = "sha256-oUjR6rq66xbaaKMY1xo0p+CQCQGM1eLYw7wxI9TpUiQ=";
      name = "kmods-siflower_sf21-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/siflower/sf21/kmods/6.18.55-1-0b4acd1426a7242f563d65a448bb670a/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/siflower/sf21/packages/";
    sourceInfo = {
      hash = "sha256-HMRAPoIQapwPXZex7yoYlPkb+pO3NUsVi76YEb7czFs=";
      name = "siflower_sf21-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/siflower/sf21/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "riscv64_generic";
  feeds = import ./../../../packages/riscv64_generic.nix;
}
