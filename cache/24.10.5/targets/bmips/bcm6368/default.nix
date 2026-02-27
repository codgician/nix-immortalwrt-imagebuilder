# 24.10.5 bmips/bcm6368
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm6368/";
  sha256sums = {
    hash = "sha256-dQOJrc6yXSVo8xRh3GDvDwYU0QSV2V82C0GzS+vskPc=";
    name = "bmips_bcm6368-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm6368/sha256sums";
  };
  imagebuilder = {
    sha256 = "5d53f78c0fedb01d204ab4c144f2b807c542013ea38ce4b279864ac2ce614652";
    filename = "immortalwrt-imagebuilder-24.10.5-bmips-bcm6368.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-JnLDU6AAdXwVwCms+Ow3OV8lzdq/aq95DilmCh90ZGI=";
    name = "bmips_bcm6368-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm6368/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "16cb8b11e606ebdcd4d98272a6491240";
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
    kmods_target = "6.6.122-1-16cb8b11e606ebdcd4d98272a6491240";
    profiles = {
      actiontec_r1000h = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
          "iwinfo"
        ];
      };
      comtrend_vr-3025u = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-43222-sprom"
          "kmod-leds-gpio"
          "iwinfo"
        ];
      };
      comtrend_vr-3025un = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-43222-sprom"
          "kmod-leds-gpio"
          "iwinfo"
        ];
      };
      comtrend_wap-5813n = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-4322-sprom"
          "kmod-leds-gpio"
          "iwinfo"
        ];
      };
      netgear_dgnd3700-v1 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
          "iwinfo"
        ];
      };
      netgear_dgnd3800b = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
          "iwinfo"
        ];
      };
      netgear_evg2000 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-4322-sprom"
          "kmod-leds-gpio"
          "iwinfo"
        ];
      };
      observa_vh4032n = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-43222-sprom"
          "kmod-leds-gpio"
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.122-1-16cb8b11e606ebdcd4d98272a6491240" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm6368/kmods/6.6.122-1-16cb8b11e606ebdcd4d98272a6491240/";
    sourceInfo = {
      hash = "sha256-cs4HZKEPgna/SUu6v0U4LdTTRHyuKpdMxQEz7KXHtyg=";
      name = "kmods-bmips_bcm6368-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm6368/kmods/6.6.122-1-16cb8b11e606ebdcd4d98272a6491240/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm6368/packages/";
    sourceInfo = {
      hash = "sha256-W4X9XwYe2JRmtYRx7tKWnj3sSR9tJ94vUehhMuekzIY=";
      name = "bmips_bcm6368-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm6368/packages/Packages";
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
