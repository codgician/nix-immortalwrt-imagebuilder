# 24.10.5 bmips/bcm63268
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm63268/";
  sha256sums = {
    hash = "sha256-xA56krb+2fPN9oO1pGsKqA+kQNSgy6Sau+Md6A+tOoc=";
    name = "bmips_bcm63268-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm63268/sha256sums";
  };
  imagebuilder = {
    sha256 = "8d0742c586f12f3853a6a25475a1ea1c55636fd25510b20eacda7409da7ea8f7";
    filename = "immortalwrt-imagebuilder-24.10.5-bmips-bcm63268.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-lTsGgP/u8zJu+a+SWNoL7jXUBUY5rYwcwm+wPQ9T5x4=";
    name = "bmips_bcm63268-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm63268/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "bf1364f9584ec6b4a4f22d78d79d093d";
      version = "6.6.122";
    };
    default_packages = [
      "base-files"
      "block-mount"
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
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.6.122-1-bf1364f9584ec6b4a4f22d78d79d093d";
    profiles = {
      actiontec_t1200h = {
        device_packages = [
          "nand-utils"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-leds-gpio"
        ];
      };
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
      sagem_fast-3864-op = {
        device_packages = [
          "nand-utils"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-leds-gpio"
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
      smartrg_sr505n = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-leds-bcm6328"
        ];
      };
    };
  };
  kmods."6.6.122-1-bf1364f9584ec6b4a4f22d78d79d093d" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm63268/kmods/6.6.122-1-bf1364f9584ec6b4a4f22d78d79d093d/";
    sourceInfo = {
      hash = "sha256-N54V47jO5Doui58k//8TEAoM4ObZF1jvyRK6pfAe5Sg=";
      name = "kmods-bmips_bcm63268-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm63268/kmods/6.6.122-1-bf1364f9584ec6b4a4f22d78d79d093d/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm63268/packages/";
    sourceInfo = {
      hash = "sha256-kp/5i3KEhoaOWbc8J3cNcq7VYoQsQJDdi/ZCL8V07do=";
      name = "bmips_bcm63268-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm63268/packages/Packages";
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
