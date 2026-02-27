# snapshot octeon/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/octeon/generic/";
  sha256sums = {
    hash = "sha256-VGiDglIRx5yfLEYk5PnUGOoHQRoZOAEkHQZNw5NnF5c=";
    name = "octeon_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/octeon/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "fe1868201896f3c23fba35377f404ae8a5389c9f0ca88d55058094ef6bf518b9";
    filename = "immortalwrt-imagebuilder-octeon-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-IuAx179sCdV/G6TL4yv+Ywkc1z7SxA0MZo6dRj+SZpQ=";
    name = "octeon_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/octeon/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips64_octeonplus";
    linux_kernel = {
      release = "1";
      vermagic = "3c44989cace6fba1f6e3b24adaf6929b";
      version = "6.12.67";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "e2fsprogs"
      "firewall4"
      "fstools"
      "kmod-nft-offload"
      "kmod-usb-dwc3-octeon"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
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
    kmods_target = "6.12.67-1-3c44989cace6fba1f6e3b24adaf6929b";
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
  kmods."6.12.67-1-3c44989cace6fba1f6e3b24adaf6929b" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/octeon/generic/kmods/6.12.67-1-3c44989cace6fba1f6e3b24adaf6929b/";
    sourceInfo = {
      hash = "sha256-KChcoDSKhD++rbEvYHv1cZyCFMTrXoD9KmDAZ6L6zXQ=";
      name = "kmods-octeon_generic-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/octeon/generic/kmods/6.12.67-1-3c44989cace6fba1f6e3b24adaf6929b/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/octeon/generic/packages/";
    sourceInfo = {
      hash = "sha256-6jH/Gs3Na/MDOOjk4mRXMrERbVZBc2Mwwts+FDa/j7I=";
      name = "octeon_generic-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/octeon/generic/packages/packages.adb";
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
