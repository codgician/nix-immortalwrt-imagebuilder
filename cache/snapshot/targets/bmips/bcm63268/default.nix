# snapshot bmips/bcm63268
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm63268/";
  sha256sums = {
    hash = "sha256-W8/yx7mnEqsZDWSoDoLbB1b0rpYg+F2FBhelOh3JOwg=";
    name = "bmips_bcm63268-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm63268/sha256sums";
  };
  imagebuilder = {
    sha256 = "7549b91fe796a180dfea05483ef4bc39a1ee0a28b1550de026870911011297e4";
    filename = "immortalwrt-imagebuilder-bmips-bcm63268.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-xmYx1E/0dFOFa9qO147GWdEjgFuFByGFqecjl2eqx/I=";
    name = "bmips_bcm63268-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm63268/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "128f112eaa52f88613775ec6ae6bdb12";
      version = "6.12.67";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "ethtool"
      "firewall4"
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
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.67-1-128f112eaa52f88613775ec6ae6bdb12";
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
  kmods."6.12.67-1-128f112eaa52f88613775ec6ae6bdb12" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm63268/kmods/6.12.67-1-128f112eaa52f88613775ec6ae6bdb12/";
    sourceInfo = {
      hash = "sha256-nSrz6PaMcvwRLPEiIuzpvGyex6INRjNIn9+MFMJ/b+E=";
      name = "kmods-bmips_bcm63268-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm63268/kmods/6.12.67-1-128f112eaa52f88613775ec6ae6bdb12/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm63268/packages/";
    sourceInfo = {
      hash = "sha256-80j9hX1fjXttV9gi2gFrFgrjk8P1b2ueuICzuCA95tU=";
      name = "bmips_bcm63268-packages.adb";
      url = "https://mirror.nju.edu.cn/immortalwrt/snapshots/targets/bmips/bcm63268/packages/packages.adb";
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
