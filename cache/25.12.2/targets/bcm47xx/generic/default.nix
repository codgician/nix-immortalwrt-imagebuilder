# 25.12.2 bcm47xx/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm47xx/generic/";
  sha256sums = {
    hash = "sha256-JAgTijUPhNBjqtASijEsD3IY/xlRwLpSyWY4RZiYDsk=";
    name = "bcm47xx_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm47xx/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "4d94da70e52983c2f478f2c201d8d27fadcc5acf873c48790caa7d1971a13ee9";
    filename = "immortalwrt-imagebuilder-25.12.2-bcm47xx-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-82Ryp8lE9RNy/rjpTDnKc+9Ty9maZ8eO/zgBow1/CQ4=";
    name = "bcm47xx_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm47xx/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "fbdd9d935ccb8ef7558fb55c969c8711";
      version = "6.12.103";
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
    kmods_target = "6.12.103-1-fbdd9d935ccb8ef7558fb55c969c8711";
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
  kmods."6.12.103-1-fbdd9d935ccb8ef7558fb55c969c8711" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm47xx/generic/kmods/6.12.103-1-fbdd9d935ccb8ef7558fb55c969c8711/";
    sourceInfo = {
      hash = "sha256-alPyw0DZgOr99ynb7u27ufa92jy2xOawRLUv3X4wW+k=";
      name = "kmods-bcm47xx_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm47xx/generic/kmods/6.12.103-1-fbdd9d935ccb8ef7558fb55c969c8711/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm47xx/generic/packages/";
    sourceInfo = {
      hash = "sha256-iMDipr3FvZ8SZhwBI2DbcZpeAHDiK6P2+tlEWcTUXGk=";
      name = "bcm47xx_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/bcm47xx/generic/packages/packages.adb";
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
