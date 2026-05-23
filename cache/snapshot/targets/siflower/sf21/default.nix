# snapshot siflower/sf21
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/siflower/sf21/";
  sha256sums = {
    hash = "sha256-elEgGACwOBlsWiPl1uGmUKTJrEtiq7UnD+PhZihyjIU=";
    name = "siflower_sf21-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/siflower/sf21/sha256sums";
  };
  imagebuilder = {
    sha256 = "feec63979da57c1126e0abb3a3664cb5b7bb30bca989cfa53a66a05dfe1be977";
    filename = "immortalwrt-imagebuilder-siflower-sf21.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-XCfZOfzccYzJcEG5XE0pmsFJwss1R2tr3w9TiJs2Knw=";
    name = "siflower_sf21-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/siflower/sf21/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "2925130540f44f463851fe62b9c2e0ca";
      version = "6.12.89";
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
    kmods_target = "6.12.89-1-2925130540f44f463851fe62b9c2e0ca";
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
  kmods."6.12.89-1-2925130540f44f463851fe62b9c2e0ca" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/siflower/sf21/kmods/6.12.89-1-2925130540f44f463851fe62b9c2e0ca/";
    sourceInfo = {
      hash = "sha256-5ZhNOA37vz62nGyAPA7hd4ACsrCW5V4ldT+vwuzjQf8=";
      name = "kmods-siflower_sf21-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/siflower/sf21/kmods/6.12.89-1-2925130540f44f463851fe62b9c2e0ca/packages.adb";
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
      hash = "sha256-MWaZC8FON0s0ShXWRZAYAf0tq1i4HahL/aBEguXlJKA=";
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
