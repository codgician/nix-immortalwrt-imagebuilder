# 24.10.5 bcm47xx/generic
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm47xx/generic/";
  sha256sums = {
    hash = "sha256-+qhGLBtc0nVABLpQFEYO9bZl6nWiWsXbw3lfOAVQSZM=";
    name = "bcm47xx_generic-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm47xx/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "4c397d31322ff0045683a66125f1157e5dd68b8e98c1b98a368dd28525514c81";
    filename = "immortalwrt-imagebuilder-24.10.5-bcm47xx-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-I+JsGwnX9fyAq4QyzJ/VBffx2MPoYq5/qMJWRj41EGk=";
    name = "bcm47xx_generic-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm47xx/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "b84c44fc2685f5e6070321690b155431";
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
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
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
      "nvram"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "otrx"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "swconfig"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "6.6.122-1-b84c44fc2685f5e6070321690b155431";
    profiles = {
      linksys_e3000-v1 = {
        device_packages = [
          "kmod-bgmac"
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      linksys_wrt610n-v1 = {
        device_packages = [
          "kmod-tg3"
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      linksys_wrt610n-v2 = {
        device_packages = [
          "kmod-bgmac"
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      standard = {
        device_packages = [
          "kmod-b44"
          "kmod-bgmac"
          "kmod-tg3"
        ];
      };
    };
  };
  kmods."6.6.122-1-b84c44fc2685f5e6070321690b155431" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm47xx/generic/kmods/6.6.122-1-b84c44fc2685f5e6070321690b155431/";
    sourceInfo = {
      hash = "sha256-v7wWgvfbYDZmWn5DVFFH4JDO/mbLrE6GnSHJO1mR51c=";
      name = "kmods-bcm47xx_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm47xx/generic/kmods/6.6.122-1-b84c44fc2685f5e6070321690b155431/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm47xx/generic/packages/";
    sourceInfo = {
      hash = "sha256-Tmmnh4z1+bM7ateP/8kIFXNVnm52MYmkC3PHn3v72+0=";
      name = "bcm47xx_generic-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bcm47xx/generic/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mipsel_mips32";
  feeds = import ./../../../packages/mipsel_mips32.nix;
}
