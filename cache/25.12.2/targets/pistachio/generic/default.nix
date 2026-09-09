# 25.12.2 pistachio/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/pistachio/generic/";
  sha256sums = {
    hash = "sha256-A/Qx65fGEwSyimgh08ZtNiV1UkuRpstNqPhWXJmOSaY=";
    name = "pistachio_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/pistachio/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "1385f6e063401f955b786729b362060d18a1f12262b672a0eb13687514dac627";
    filename = "immortalwrt-imagebuilder-25.12.2-pistachio-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-gwYlskfp1LHbdmgXL1hL0sjth3vVrlSMNUvcQuLYwSk=";
    name = "pistachio_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/pistachio/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_24kc_24kf";
    linux_kernel = {
      release = "1";
      vermagic = "4ed11a4d2967ee0ec0621b8eaa1f213d";
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
      "odhcp6c"
      "odhcpd-ipv6only"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.103-1-4ed11a4d2967ee0ec0621b8eaa1f213d";
    profiles = {
      img_creator-ci40 = {
        device_packages = [
          "kmod-tpm-i2c-infineon"
          "kmod-ca8210"
          "wpan-tools"
        ];
      };
    };
  };
  kmods."6.12.103-1-4ed11a4d2967ee0ec0621b8eaa1f213d" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/pistachio/generic/kmods/6.12.103-1-4ed11a4d2967ee0ec0621b8eaa1f213d/";
    sourceInfo = {
      hash = "sha256-sjj2rVVY5TEW5bqRBTdN7VTc7jPTpZ6AQrA9WRYOxqE=";
      name = "kmods-pistachio_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/pistachio/generic/kmods/6.12.103-1-4ed11a4d2967ee0ec0621b8eaa1f213d/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.2/targets/pistachio/generic/packages/";
    sourceInfo = {
      hash = "sha256-57mDNyFgelqFT3yXewdbWqoOdpyrA0HKxbh4DpIJ2Y8=";
      name = "pistachio_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.2/targets/pistachio/generic/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mipsel_24kc_24kf";
  feeds = import ./../../../packages/mipsel_24kc_24kf.nix;
}
