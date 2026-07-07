# 25.12.1 bcm47xx/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm47xx/generic/";
  sha256sums = {
    hash = "sha256-Vz/1s5AS555oTSeEpHcrwjEdxX4KZPpXZk4FRJwgkTI=";
    name = "bcm47xx_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm47xx/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "cf865687e90492a20baf37f270291ecccf8199785c8d396a1b52f34572ab607d";
    filename = "immortalwrt-imagebuilder-25.12.1-bcm47xx-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Fn4ABaEiyyjW4TCuyIbtsAlfoUpnMnchw0AuX38uyA8=";
    name = "bcm47xx_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm47xx/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "fbdd9d935ccb8ef7558fb55c969c8711";
      version = "6.12.94";
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
    kmods_target = "6.12.94-1-fbdd9d935ccb8ef7558fb55c969c8711";
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
  kmods."6.12.94-1-fbdd9d935ccb8ef7558fb55c969c8711" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm47xx/generic/kmods/6.12.94-1-fbdd9d935ccb8ef7558fb55c969c8711/";
    sourceInfo = {
      hash = "sha256-+R9X8YIG636lyy4r/1R6iPbJSCOUPRGBUeOUwiEmJxo=";
      name = "kmods-bcm47xx_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm47xx/generic/kmods/6.12.94-1-fbdd9d935ccb8ef7558fb55c969c8711/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm47xx/generic/packages/";
    sourceInfo = {
      hash = "sha256-4U8fa2J6+IXao1nIQxYQWnVMrIc6Wnpwck9kt21Cyc8=";
      name = "bcm47xx_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/bcm47xx/generic/packages/packages.adb";
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
