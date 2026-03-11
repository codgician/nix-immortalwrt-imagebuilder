# snapshot bcm47xx/generic
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/generic/";
  sha256sums = {
    hash = "sha256-K8+1HYyNWDwZEDo9qm92+vUaU/HQO6ZrYQY6MxVqB1c=";
    name = "bcm47xx_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "d6e1c7bac30af5fe00530cdfb1636502786cd76c8a3f0e3c0e2b1b68c2ffc63e";
    filename = "immortalwrt-imagebuilder-bcm47xx-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-MV2ZoRWywTSS6lVW3cSGlbxZ/EzTKohS+XVrul6dln4=";
    name = "bcm47xx_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "5372c147008a44d42c5e6dbdb29f95da";
      version = "6.12.74";
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
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
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
    kmods_target = "6.12.74-1-5372c147008a44d42c5e6dbdb29f95da";
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
  kmods."6.12.74-1-5372c147008a44d42c5e6dbdb29f95da" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/generic/kmods/6.12.74-1-5372c147008a44d42c5e6dbdb29f95da/";
    sourceInfo = {
      hash = "sha256-1KLpBV9dIY8I8g+0NuqXDBa2VYJgao628N4m8eOMMoU=";
      name = "kmods-bcm47xx_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/generic/kmods/6.12.74-1-5372c147008a44d42c5e6dbdb29f95da/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/generic/packages/";
    sourceInfo = {
      hash = "sha256-VWgL+CeOeNDEFHnKUc08BGLaUV3GbmdkhBpFqxNGSSk=";
      name = "bcm47xx_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bcm47xx/generic/packages/packages.adb";
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
