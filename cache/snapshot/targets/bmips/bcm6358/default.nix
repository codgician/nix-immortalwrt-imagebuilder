# snapshot bmips/bcm6358
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6358/";
  sha256sums = {
    hash = "sha256-Qu+Q6De3uiqD61tO4xouWWfFimE63WszDCtZxnre8nc=";
    name = "bmips_bcm6358-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6358/sha256sums";
  };
  imagebuilder = {
    sha256 = "8fa80ee43b3688cf85bbb83fc5cffddb468d655093dfe046d53bcf8c8dcc5aef";
    filename = "immortalwrt-imagebuilder-bmips-bcm6358.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-ZGdJm5eyJ8v3Ze/y6Qgld6fKijTOj6aYFhsS532a6ew=";
    name = "bmips_bcm6358-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6358/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "05919b61259d65969676ae34e439c556";
      version = "6.12.92";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "ca-bundle"
      "dnsmasq-full"
      "dropbear"
      "ethtool"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nft-offload"
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
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.92-1-05919b61259d65969676ae34e439c556";
    profiles = {
      huawei_hg553 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
        ];
      };
      huawei_hg556a-a = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-ath9k"
          "kmod-owl-loader"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
        ];
      };
      huawei_hg556a-b = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-ath9k"
          "kmod-owl-loader"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
        ];
      };
      huawei_hg556a-c = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-rt2800-pci"
          "wpad-basic-openssl"
          "kmod-leds-gpio"
        ];
      };
    };
  };
  kmods."6.12.92-1-05919b61259d65969676ae34e439c556" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6358/kmods/6.12.92-1-05919b61259d65969676ae34e439c556/";
    sourceInfo = {
      hash = "sha256-nwedM+eow5AjJ4Q4sJwdVlF2nyj07JBtKcnw3nwa3t4=";
      name = "kmods-bmips_bcm6358-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6358/kmods/6.12.92-1-05919b61259d65969676ae34e439c556/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6358/packages/";
    sourceInfo = {
      hash = "sha256-64CtrQQrE5BULT5aTCoWEi7aElM2JzEqVdeq2opV1z4=";
      name = "bmips_bcm6358-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6358/packages/packages.adb";
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
