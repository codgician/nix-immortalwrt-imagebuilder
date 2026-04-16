# 25.12.0-rc2 siflower/sf21
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/siflower/sf21/";
  sha256sums = {
    hash = "sha256-r6z11qMXvmbjXrlcfiG3g+ODfaXqY55v6ZAsnrPpzNc=";
    name = "siflower_sf21-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/siflower/sf21/sha256sums";
  };
  imagebuilder = {
    sha256 = "fee4a90b22dac0ec253d6285448be2de0e4c643cd22e67404880c2deeb023180";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-siflower-sf21.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-+2bOLQ5nreqdzn1GMsnruR7KsLXg32fdOatecJQhAD8=";
    name = "siflower_sf21-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/siflower/sf21/profiles.json";
  };
  profiles.extract = {
    arch_packages = "riscv64_generic";
    linux_kernel = {
      release = "1";
      vermagic = "e8f408132e1a215446ba108a352ca781";
      version = "6.12.79";
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
      "fitblk"
      "fstools"
      "kmod-gpio-button-hotplug"
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
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.79-1-e8f408132e1a215446ba108a352ca781";
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
  kmods."6.12.79-1-e8f408132e1a215446ba108a352ca781" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/siflower/sf21/kmods/6.12.79-1-e8f408132e1a215446ba108a352ca781/";
    sourceInfo = {
      hash = "sha256-2JJLeeyGfTCLXq+cTVnqyzNQEasFEBtMhDgsgqp3+sQ=";
      name = "kmods-siflower_sf21-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/siflower/sf21/kmods/6.12.79-1-e8f408132e1a215446ba108a352ca781/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/siflower/sf21/packages/";
    sourceInfo = {
      hash = "sha256-qEiJ1UpsQWffwEZhXxER1g1/vHyiVZI4AcGOU9BVFFM=";
      name = "siflower_sf21-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/siflower/sf21/packages/packages.adb";
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
