# 23.05.7 bmips/bcm6328
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bmips/bcm6328/";
  sha256sums = {
    hash = "sha256-KUs695wSDNdhxmAOtTjY1jVMHrl/eMMv+ZFmjlzb8i8=";
    name = "bmips_bcm6328-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bmips/bcm6328/sha256sums";
  };
  imagebuilder = {
    sha256 = "01618fb0b60f4ce2b898c85867206f60ec38eacc479171e7345718152d6d164c";
    filename = "immortalwrt-imagebuilder-23.05.7-bmips-bcm6328.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-O6tntlkJB8YjTWlTj2LScJ3ZtyDWoe6t/FZoCVsE0nU=";
    name = "bmips_bcm6328-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bmips/bcm6328/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "8a8b5e5ef6e4027bea1f171388583ac0";
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
    kmods_target = "5.15.195-1-8a8b5e5ef6e4027bea1f171388583ac0";
    profiles = {
      arcadyan_ar7516 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-43227-sprom"
          "kmod-leds-bcm6328"
          "iwinfo"
        ];
      };
      comtrend_ar-5381u = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-43225-sprom"
          "kmod-leds-bcm6328"
          "iwinfo"
        ];
      };
      comtrend_ar-5387un = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-43225-sprom"
          "kmod-leds-bcm6328"
          "iwinfo"
        ];
      };
      nucom_r5010unv2 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-43217-sprom"
          "kmod-leds-bcm6328"
          "iwinfo"
        ];
      };
      sercomm_ad1018 = {
        device_packages = [
          "nand-utils"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-43217-sprom"
          "kmod-leds-bcm6328"
          "iwinfo"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bmips/bcm6328/packages/";
    sourceInfo = {
      hash = "sha256-i77Y9eVJZn7O0mIeQGxxCnNaUAIF2SuPoGrvr7UOSV8=";
      name = "bmips_bcm6328-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bmips/bcm6328/packages/Packages";
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
