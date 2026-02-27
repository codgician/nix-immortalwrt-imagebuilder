# 24.10.5 bmips/bcm6362
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm6362/";
  sha256sums = {
    hash = "sha256-Q2anrvQVY48y+2q8WIA4wmtKb26jqxcHRhTj8voZYvw=";
    name = "bmips_bcm6362-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm6362/sha256sums";
  };
  imagebuilder = {
    sha256 = "0b56f54dfba985153c17d99297475745dd0103d95a12cd446647aef9cec7a334";
    filename = "immortalwrt-imagebuilder-24.10.5-bmips-bcm6362.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-4r/Q+Z1lIb6GXu+1N74P638yjLinB8lPul5WuMz4vm8=";
    name = "bmips_bcm6362-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm6362/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "3bcc6f771ba9aa6c194a1db821ef94a8";
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
    kmods_target = "6.6.122-1-3bcc6f771ba9aa6c194a1db821ef94a8";
    profiles = {
      huawei_hg253s-v2 = {
        device_packages = [
          "nand-utils"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-leds-bcm6328"
          "kmod-leds-gpio"
        ];
      };
      netgear_dgnd3700-v2 = {
        device_packages = [
          "nand-utils"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-leds-bcm6328"
          "kmod-leds-gpio"
          "iwinfo"
        ];
      };
    };
  };
  kmods."6.6.122-1-3bcc6f771ba9aa6c194a1db821ef94a8" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm6362/kmods/6.6.122-1-3bcc6f771ba9aa6c194a1db821ef94a8/";
    sourceInfo = {
      hash = "sha256-pNUOD1el/MkzDo4cIq1M7B0ZrtgDJR19lBks6fUz9OE=";
      name = "kmods-bmips_bcm6362-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm6362/kmods/6.6.122-1-3bcc6f771ba9aa6c194a1db821ef94a8/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm6362/packages/";
    sourceInfo = {
      hash = "sha256-4++sS8HdXhWssG0vL+pOBwtM3eArFMMPCuj7wiKGv/I=";
      name = "bmips_bcm6362-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/bmips/bcm6362/packages/Packages";
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
