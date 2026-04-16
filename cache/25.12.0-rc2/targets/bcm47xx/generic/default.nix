# 25.12.0-rc2 bcm47xx/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm47xx/generic/";
  sha256sums = {
    hash = "sha256-CLPzMTr1lZs52Cwf9uLC75vpgDCW2X41kxUcsqS5QKs=";
    name = "bcm47xx_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm47xx/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "def350f853364d03d8a5891d0c6f03df9ff785fad6f791c83718fa1c190e417b";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-bcm47xx-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-9binOLcPtEw/9hVjxytgvy6IKatoZyDrVPP/flU7T5o=";
    name = "bcm47xx_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm47xx/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "3d66428de2b3ebfc6c4b47c1dfae602a";
      version = "6.12.79";
    };
    default_packages = [
      "apk-openssl"
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
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "mtd"
      "netifd"
      "nftables"
      "nvram"
      "odhcp6c"
      "odhcpd-ipv6only"
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
    kmods_target = "6.12.79-1-3d66428de2b3ebfc6c4b47c1dfae602a";
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
  kmods."6.12.79-1-3d66428de2b3ebfc6c4b47c1dfae602a" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm47xx/generic/kmods/6.12.79-1-3d66428de2b3ebfc6c4b47c1dfae602a/";
    sourceInfo = {
      hash = "sha256-m+EZkJh7eIwVh7J3QNQMowFcOMEIHWlOm+Eysn0ozW4=";
      name = "kmods-bcm47xx_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm47xx/generic/kmods/6.12.79-1-3d66428de2b3ebfc6c4b47c1dfae602a/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm47xx/generic/packages/";
    sourceInfo = {
      hash = "sha256-IRDq1WBWCJMJcp4Cz88TQV8kLNFimE3X5zsq38BXgH0=";
      name = "bcm47xx_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bcm47xx/generic/packages/packages.adb";
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
