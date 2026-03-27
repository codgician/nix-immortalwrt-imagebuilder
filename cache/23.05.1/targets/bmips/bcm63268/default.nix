# 23.05.1 bmips/bcm63268
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.1/targets/bmips/bcm63268/";
  sha256sums = {
    hash = "sha256-fyPb9wT+GmKIBXFpkkslFN3jY9wfWZt2PiYmUVt2rb4=";
    name = "bmips_bcm63268-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/bmips/bcm63268/sha256sums";
  };
  imagebuilder = {
    sha256 = "3097ebd3d1d2afcd44e2306a9ebb0104f93b45b667cc74273acce7a6a5a78469";
    filename = "immortalwrt-imagebuilder-23.05.1-bmips-bcm63268.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-u6ACRyXjNcJB71Aab01Yb0B70kyb/trgW1pS9SKVqWw=";
    name = "bmips_bcm63268-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/bmips/bcm63268/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = null;
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
      "ipv6helper"
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
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "null-null-null";
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
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.1/targets/bmips/bcm63268/packages/";
    sourceInfo = {
      hash = "sha256-ULTyAqfLA1QJZO6FudTlnDleflbSbMAXusK2KkKtfWA=";
      name = "bmips_bcm63268-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.1/targets/bmips/bcm63268/packages/Packages";
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
