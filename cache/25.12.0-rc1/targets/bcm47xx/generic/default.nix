# 25.12.0-rc1 bcm47xx/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm47xx/generic/";
  sha256sums = {
    hash = "sha256-yobhn3aFLoJ77dnpKf1MNms8RPnlLZedsrx8FuLqrgs=";
    name = "bcm47xx_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm47xx/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "b3704efb23b969f03eacad4740414f67b97e913f8771d11e158294d7445824ba";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-bcm47xx-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-n7roq4x582dpS4oIH40xFpJhJYj/jVKTJGCmkU7cICw=";
    name = "bcm47xx_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm47xx/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "68f4f0eb538f0c4699448bbad79c45ff";
      version = "6.12.74";
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
    kmods_target = "6.12.74-1-68f4f0eb538f0c4699448bbad79c45ff";
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
  kmods."6.12.74-1-68f4f0eb538f0c4699448bbad79c45ff" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm47xx/generic/kmods/6.12.74-1-68f4f0eb538f0c4699448bbad79c45ff/";
    sourceInfo = {
      hash = "sha256-7DEav1g383xE3AQPW5sZBSekmD4HvgL2JMsyxZkXiWo=";
      name = "kmods-bcm47xx_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm47xx/generic/kmods/6.12.74-1-68f4f0eb538f0c4699448bbad79c45ff/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm47xx/generic/packages/";
    sourceInfo = {
      hash = "sha256-rIZvSSyRO8FF6HUWCfRgH5lkyajXQ47bwZjxbCdS4RY=";
      name = "bcm47xx_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bcm47xx/generic/packages/packages.adb";
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
