# snapshot siflower/sf21
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/siflower/sf21/";
  sha256sums = {
    hash = "sha256-EmozRm6EKGC/A2/4YL7J3qn+Oq6HAF0MbQuBzJVGvCA=";
    name = "siflower_sf21-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/siflower/sf21/sha256sums";
  };
  imagebuilder = {
    sha256 = "15df49ebaa4a4ea2f766ef82932472e255e6a77002695498dcbd43365f8bc7f1";
    filename = "immortalwrt-imagebuilder-siflower-sf21.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-5+LXAx5C1nyzzW9wzJsoc96BCsQsm2YZQuUS2ds7tLk=";
    name = "siflower_sf21-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/siflower/sf21/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "77b970466f8167e099ff5e8a35a369d0";
      version = "6.12.94";
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
    kmods_target = "6.12.94-1-77b970466f8167e099ff5e8a35a369d0";
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
  kmods."6.12.94-1-77b970466f8167e099ff5e8a35a369d0" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/siflower/sf21/kmods/6.12.94-1-77b970466f8167e099ff5e8a35a369d0/";
    sourceInfo = {
      hash = "sha256-waTxz2942lEzrjvk4QlqIKHOCRZd0QzZ388sz+I45xw=";
      name = "kmods-siflower_sf21-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/siflower/sf21/kmods/6.12.94-1-77b970466f8167e099ff5e8a35a369d0/packages.adb";
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
      hash = "sha256-43ppA1h9bSWFSyxpqNw4sYjF/FD2XnCh+fWOWGZ6b04=";
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
