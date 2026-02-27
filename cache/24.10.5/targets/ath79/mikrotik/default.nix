# 24.10.5 ath79/mikrotik
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ath79/mikrotik/";
  sha256sums = {
    hash = "sha256-dYqrQzHrZH+D7KE0QhCwrvUU39YZ7cMYWNnz/cagTIk=";
    name = "ath79_mikrotik-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ath79/mikrotik/sha256sums";
  };
  imagebuilder = {
    sha256 = "08bf0cf1e3525f69c89e5311dbffd6074728d2165363ca08ba954bcce7f4ed02";
    filename = "immortalwrt-imagebuilder-24.10.5-ath79-mikrotik.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-JXik5ECNlzK+FsDx6bTCFg7X9nrSY+hs2nbw3izjK2M=";
    name = "ath79_mikrotik-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ath79/mikrotik/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "ee5b0d0b85aef3c42d5c1d1ebf1e1b70";
      version = "6.6.122";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-ath9k"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
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
    kmods_target = "6.6.122-1-ee5b0d0b85aef3c42d5c1d1ebf1e1b70";
    profiles = {
      mikrotik_routerboard-493g = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      mikrotik_routerboard-750-r2 = {
        device_packages = [ "-yafut" ];
      };
      mikrotik_routerboard-911-lite = {
        device_packages = [
          "-yafut"
          "rssileds"
        ];
      };
      mikrotik_routerboard-911g-5hpacd = {
        device_packages = [
          "kmod-ath10k-ct"
          "ath10k-firmware-qca988x-ct"
        ];
      };
      mikrotik_routerboard-911g-xhpnd = {
        device_packages = [ "rssileds" ];
      };
      mikrotik_routerboard-912uag-2hpnd = {
        device_packages = [
          "kmod-usb-ehci"
          "kmod-usb2"
          "rssileds"
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
  kmods."6.6.122-1-ee5b0d0b85aef3c42d5c1d1ebf1e1b70" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ath79/mikrotik/kmods/6.6.122-1-ee5b0d0b85aef3c42d5c1d1ebf1e1b70/";
    sourceInfo = {
      hash = "sha256-H/WjTcU08GHW5NhwbgnxXLVjyqrytroL2qCJ0admHOY=";
      name = "kmods-ath79_mikrotik-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ath79/mikrotik/kmods/6.6.122-1-ee5b0d0b85aef3c42d5c1d1ebf1e1b70/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ath79/mikrotik/packages/";
    sourceInfo = {
      hash = "sha256-KKdQhXuCDMuDYYQCDgmPY2z5lL5B97MvjFpRx3nKBNU=";
      name = "ath79_mikrotik-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/ath79/mikrotik/packages/Packages";
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
