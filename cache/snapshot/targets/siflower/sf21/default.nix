# snapshot siflower/sf21
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/siflower/sf21/";
  sha256sums = {
    hash = "sha256-hg+eZkUobBReg+FPRWTkMc744s6XlJgXUKQmGvlL7j0=";
    name = "siflower_sf21-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/siflower/sf21/sha256sums";
  };
  imagebuilder = {
    sha256 = "4de400ba76160f9d366934613defc0ded49c2cc63baddf58e70f276ad68c36ed";
    filename = "immortalwrt-imagebuilder-siflower-sf21.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-UJtiDOmJvmoHFmqL66HaIfCjHMo1Lro+WR1bdxWpozc=";
    name = "siflower_sf21-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/siflower/sf21/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "247bb8d6b708d15eeca4911f2cdf308c";
      version = "6.12.80";
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
    kmods_target = "6.12.80-1-247bb8d6b708d15eeca4911f2cdf308c";
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
  kmods."6.12.80-1-247bb8d6b708d15eeca4911f2cdf308c" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/siflower/sf21/kmods/6.12.80-1-247bb8d6b708d15eeca4911f2cdf308c/";
    sourceInfo = {
      hash = "sha256-VVnz9gTddZ4RYRmeme+ofjbxdYxrDX3Bea+6Jv62Hc4=";
      name = "kmods-siflower_sf21-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/siflower/sf21/kmods/6.12.80-1-247bb8d6b708d15eeca4911f2cdf308c/packages.adb";
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
      hash = "sha256-VBJwbA9xrxIg7z7ANv8Gn+fUHAgHRa8bu6Etztr/CRE=";
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
