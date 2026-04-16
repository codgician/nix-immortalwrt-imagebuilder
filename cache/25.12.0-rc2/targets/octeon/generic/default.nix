# 25.12.0-rc2 octeon/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/octeon/generic/";
  sha256sums = {
    hash = "sha256-vHFU+8QL469lbGDG//5Zsv9lM26JvhVWebiyfuMb+W0=";
    name = "octeon_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/octeon/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "0f087e2da581275c1922ebe5ae18f04cd91b2f019c8be072226420246ef35185";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-octeon-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-0GZQ2fY8jLrgVtoTZwcVWzV2WeAEAl1j5eockJSf1A0=";
    name = "octeon_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/octeon/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips64_octeonplus";
    linux_kernel = {
      release = "1";
      vermagic = "cc0fb2c0398f918aeabb673291399ec9";
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
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "kmod-usb-dwc3-octeon"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "mkf2fs"
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
    kmods_target = "6.12.79-1-cc0fb2c0398f918aeabb673291399ec9";
    profiles = {
      cisco_vedge1000 = {
        device_packages = [
          "blkid"
          "kmod-hwmon-jc42"
          "kmod-hwmon-max6697"
          "kmod-of-mdio"
          "kmod-rtc-ds1307"
          "kmod-usb-dwc3"
          "kmod-usb-storage-uas"
          "kmod-usb3"
          "sfdisk"
          "uboot-envtools"
        ];
      };
      generic = {
        device_packages = [ ];
      };
      itus_shield-router = {
        device_packages = [ ];
      };
      ubnt_edgerouter = {
        device_packages = [ ];
      };
      ubnt_edgerouter-4 = {
        device_packages = [
          "kmod-gpio-button-hotplug"
          "kmod-leds-gpio"
          "kmod-of-mdio"
          "kmod-sfp"
          "kmod-usb3"
          "kmod-usb-dwc3"
          "kmod-usb-storage-uas"
        ];
      };
      ubnt_edgerouter-6p = {
        device_packages = [
          "kmod-gpio-button-hotplug"
          "kmod-leds-gpio"
          "kmod-of-mdio"
          "kmod-sfp"
          "kmod-usb3"
          "kmod-usb-dwc3"
          "kmod-usb-storage-uas"
        ];
      };
      ubnt_edgerouter-lite = {
        device_packages = [ ];
      };
      ubnt_unifi-usg = {
        device_packages = [
          "kmod-gpio-button-hotplug"
          "kmod-leds-gpio"
        ];
      };
    };
  };
  kmods."6.12.79-1-cc0fb2c0398f918aeabb673291399ec9" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/octeon/generic/kmods/6.12.79-1-cc0fb2c0398f918aeabb673291399ec9/";
    sourceInfo = {
      hash = "sha256-ijmiz7gi0r1nYLqSChm8WxKEmbjGHxe6Ym/0XCDtgFI=";
      name = "kmods-octeon_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/octeon/generic/kmods/6.12.79-1-cc0fb2c0398f918aeabb673291399ec9/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/octeon/generic/packages/";
    sourceInfo = {
      hash = "sha256-+ueEAJ+ju9xjfGQQLAyoaducR5uVtNnNSYrA04RHW7k=";
      name = "octeon_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/octeon/generic/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips64_octeonplus";
  feeds = import ./../../../packages/mips64_octeonplus.nix;
}
