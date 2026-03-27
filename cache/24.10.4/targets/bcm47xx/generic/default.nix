# 24.10.4 bcm47xx/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm47xx/generic/";
  sha256sums = {
    hash = "sha256-0i9VyWvw9duPeM1dETtvvzccJMp5mE71vs55KCE3isg=";
    name = "bcm47xx_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm47xx/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "e9bf9338408ea010495331b0b8c38198475077872a9b86a6937727d613740ea5";
    filename = "immortalwrt-imagebuilder-24.10.4-bcm47xx-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-uApgW+tB1Mn6Pxz603nNjwR+JKmhevel0xnxHgoUh/4=";
    name = "bcm47xx_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm47xx/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "1ae4a4b8229bc31d1e61796e663953e9";
      version = "6.6.110";
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
    kmods_target = "6.6.110-1-1ae4a4b8229bc31d1e61796e663953e9";
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
  kmods."6.6.110-1-1ae4a4b8229bc31d1e61796e663953e9" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm47xx/generic/kmods/6.6.110-1-1ae4a4b8229bc31d1e61796e663953e9/";
    sourceInfo = {
      hash = "sha256-8Q6ttBOAK5pj3cmEcFe8Bt2IVvHOX5UDZfZJZActfDk=";
      name = "kmods-bcm47xx_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm47xx/generic/kmods/6.6.110-1-1ae4a4b8229bc31d1e61796e663953e9/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm47xx/generic/packages/";
    sourceInfo = {
      hash = "sha256-PK4k4e+S9rbD2w0BIhS1x2VWW1AOsBF7szqzYrcbuZ0=";
      name = "bcm47xx_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/bcm47xx/generic/packages/Packages";
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
