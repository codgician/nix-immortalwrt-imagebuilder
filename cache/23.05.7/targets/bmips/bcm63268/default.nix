# 23.05.7 bmips/bcm63268
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bmips/bcm63268/";
  sha256sums = {
    hash = "sha256-Z2kh4ZXrtY97YfEoq5rF6sNqddRT5rOjA49cnhAcOHk=";
    name = "bmips_bcm63268-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bmips/bcm63268/sha256sums";
  };
  imagebuilder = {
    sha256 = "b4d8599441548f6a0c2597cdc7a6bd9427877f50d3695d9a41048759b7c7f4a3";
    filename = "immortalwrt-imagebuilder-23.05.7-bmips-bcm63268.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-hiddtdGbxlMMQh/lX9B2BNbQUDF0vStmUo1+o/oN/pE=";
    name = "bmips_bcm63268-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bmips/bcm63268/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "dd98aaf76f0ff0bfbf32af3a348abdc6";
      version = "5.15.195";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "ethtool"
      "firewall4"
      "fstools"
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
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "5.15.195-1-dd98aaf76f0ff0bfbf32af3a348abdc6";
    profiles = {
      comtrend_vg-8050 = {
        device_packages = [
          "nand-utils"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-leds-bcm6328"
        ];
      };
      comtrend_vr-3032u = {
        device_packages = [
          "nand-utils"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-leds-bcm6328"
        ];
      };
      sercomm_h500-s-lowi = {
        device_packages = [
          "nand-utils"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-leds-bcm6328"
        ];
      };
      sercomm_h500-s-vfes = {
        device_packages = [
          "nand-utils"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-leds-bcm6328"
        ];
      };
      sercomm_shg2500 = {
        device_packages = [
          "nand-utils"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "broadcom-4360-sprom"
          "kmod-i2c-gpio"
          "kmod-leds-sercomm-msp430"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bmips/bcm63268/packages/";
    sourceInfo = {
      hash = "sha256-p+SwjaxBQfR06WdvbtMKg5I9p4ODizjDzJU0UhgLSBo=";
      name = "bmips_bcm63268-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bmips/bcm63268/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_mips32";
  feeds = import ./../../../packages/mips_mips32.nix;
}
