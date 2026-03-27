# 24.10.2 bcm47xx/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm47xx/generic/";
  sha256sums = {
    hash = "sha256-Sn9zykGrfuhjXC87h7zFHCtQ+AdL++nBepY/qZTBSdE=";
    name = "bcm47xx_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm47xx/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "fca7a8dbe079afa6014b88521a179abdcc3b8917979b924b70ecabf90285f4f4";
    filename = "immortalwrt-imagebuilder-24.10.2-bcm47xx-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-EjyRgl9qIN5OO4HFgoWjn3GfDAfZYfdSfc3dtiCWQa8=";
    name = "bcm47xx_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm47xx/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "568219f36e95a308f46f3061b25f75cd";
      version = "6.6.93";
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
    kmods_target = "6.6.93-1-568219f36e95a308f46f3061b25f75cd";
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
  kmods."6.6.93-1-568219f36e95a308f46f3061b25f75cd" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm47xx/generic/kmods/6.6.93-1-568219f36e95a308f46f3061b25f75cd/";
    sourceInfo = {
      hash = "sha256-tuSDPMs1nZBvJfuzUQjvCFID1gLIXoxRbN/fnXaYHEA=";
      name = "kmods-bcm47xx_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm47xx/generic/kmods/6.6.93-1-568219f36e95a308f46f3061b25f75cd/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm47xx/generic/packages/";
    sourceInfo = {
      hash = "sha256-9P5LhvCWRWB9rrJF0wW4WbViwEJhLEd2IiOyXmtHSpM=";
      name = "bcm47xx_generic-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/bcm47xx/generic/packages/Packages";
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
