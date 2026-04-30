# snapshot ramips/rt3883
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt3883/";
  sha256sums = {
    hash = "sha256-Jm6URLILJwzpbWkb7BFefGDgvttCtfyOX93YjPJT21k=";
    name = "ramips_rt3883-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt3883/sha256sums";
  };
  imagebuilder = {
    sha256 = "5417bd9d7a3a16b22d4bafc43e5d7b48695ac6f5cb8af4679c0c185f1a6f92e8";
    filename = "immortalwrt-imagebuilder-ramips-rt3883.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-a2e2FtKD1SaIfLQbF1C550N97e+3TckAEvZW63EsGTM=";
    name = "ramips_rt3883-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt3883/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_74kc";
    linux_kernel = {
      release = "1";
      vermagic = "5924a10c28ae184ba2e5bdbdbeab076e";
      version = "6.12.80";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nft-offload"
      "kmod-rt2800-pci"
      "kmod-rt2800-soc"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "ppp"
      "ppp-mod-pppoe"
      "swconfig"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "6.12.80-1-5924a10c28ae184ba2e5bdbdbeab076e";
    profiles = {
      belkin_f9k1109v1 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      dlink_dir-645 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      edimax_br-6475nd = {
        device_packages = [ ];
      };
      engenius_esr600h = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
          "uboot-envtools"
        ];
      };
      omnima_hpm = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      samsung_cy-swr1100 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      trendnet_tew-691gr = {
        device_packages = [ ];
      };
      trendnet_tew-692gr = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.12.80-1-5924a10c28ae184ba2e5bdbdbeab076e" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt3883/kmods/6.12.80-1-5924a10c28ae184ba2e5bdbdbeab076e/";
    sourceInfo = {
      hash = "sha256-LqrsSmU072svorZJUOchbhPk3arOjzT4DCvk7WbuDCQ=";
      name = "kmods-ramips_rt3883-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt3883/kmods/6.12.80-1-5924a10c28ae184ba2e5bdbdbeab076e/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt3883/packages/";
    sourceInfo = {
      hash = "sha256-HpKAfqYNwdQkIeEt+3yXnLmGv05TMWu7E8C6VWZjGPE=";
      name = "ramips_rt3883-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/ramips/rt3883/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mipsel_74kc";
  feeds = import ./../../../packages/mipsel_74kc.nix;
}
