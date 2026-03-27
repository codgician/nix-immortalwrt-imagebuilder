# 23.05.1 ath79/mikrotik
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.1/targets/ath79/mikrotik/";
  sha256sums = {
    hash = "sha256-sLSd1ahkNA9mDONcbmU3x6IcSv4OjcDDKWIwepJxEI8=";
    name = "ath79_mikrotik-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/ath79/mikrotik/sha256sums";
  };
  imagebuilder = {
    sha256 = "43591628444437c9d26ba23a8831aac0fcb258bfa9a44d74fe1f2461fdfb095d";
    filename = "immortalwrt-imagebuilder-23.05.1-ath79-mikrotik.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-pf2/D/v9jOovvsIM0c3Q/nAbtYRF1JYbgCtXzcqZziQ=";
    name = "ath79_mikrotik-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/ath79/mikrotik/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = null;
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "ipv6helper"
      "kmod-ath9k"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nftables"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "swconfig"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
      "yafut"
    ];
    kmods_target = "null-null-null";
    profiles = {
      mikrotik_routerboard-493g = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      mikrotik_routerboard-911-lite = {
        device_packages = [
          "-yafut"
          "rssileds"
        ];
      };
      mikrotik_routerboard-912uag-2hpnd = {
        device_packages = [
          "kmod-usb-ehci"
          "kmod-usb2"
        ];
      };
      mikrotik_routerboard-921gs-5hpacd-15s = {
        device_packages = [
          "kmod-ath10k-ct"
          "ath10k-firmware-qca988x-ct"
          "kmod-i2c-gpio"
          "kmod-sfp"
        ];
      };
      mikrotik_routerboard-922uags-5hpacd = {
        device_packages = [
          "kmod-ath10k-ct"
          "ath10k-firmware-qca988x-ct"
          "kmod-usb2"
          "kmod-i2c-gpio"
          "kmod-sfp"
        ];
      };
      mikrotik_routerboard-951g-2hnd = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      mikrotik_routerboard-951ui-2hnd = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      mikrotik_routerboard-951ui-2nd = {
        device_packages = [ "-yafut" ];
      };
      mikrotik_routerboard-952ui-5ac2nd = {
        device_packages = [
          "-yafut"
          "kmod-ath10k-ct-smallbuffers"
          "ath10k-firmware-qca9887-ct"
        ];
      };
      mikrotik_routerboard-962uigs-5hact2hnt = {
        device_packages = [
          "-yafut"
          "kmod-ath10k-ct"
          "ath10k-firmware-qca988x-ct"
          "kmod-usb2"
          "kmod-i2c-gpio"
          "kmod-sfp"
        ];
      };
      mikrotik_routerboard-lhg-2nd = {
        device_packages = [ "-yafut" ];
      };
      mikrotik_routerboard-lhg-5nd = {
        device_packages = [
          "-yafut"
          "rssileds"
        ];
      };
      mikrotik_routerboard-map-2nd = {
        device_packages = [
          "-yafut"
          "kmod-usb2"
          "kmod-ledtrig-gpio"
        ];
      };
      mikrotik_routerboard-mapl-2nd = {
        device_packages = [ "-yafut" ];
      };
      mikrotik_routerboard-sxt-5nd-r2 = {
        device_packages = [
          "rssileds"
          "kmod-gpio-beeper"
        ];
      };
      mikrotik_routerboard-wap-2nd = {
        device_packages = [ "-yafut" ];
      };
      mikrotik_routerboard-wap-g-5hact2hnd = {
        device_packages = [
          "-yafut"
          "kmod-ath10k-ct-smallbuffers"
          "ath10k-firmware-qca988x-ct"
        ];
      };
      mikrotik_routerboard-wapr-2nd = {
        device_packages = [
          "-yafut"
          "kmod-usb2"
          "rssileds"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.1/targets/ath79/mikrotik/packages/";
    sourceInfo = {
      hash = "sha256-8uXawADVq/Nb0tOxuL98PSI6oZ90tdmI8za8CjsZ5AA=";
      name = "ath79_mikrotik-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/ath79/mikrotik/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_24kc";
  feeds = import ./../../../packages/mips_24kc.nix;
}
