# snapshot bmips/bcm6318
{
  baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6318/";
  sha256sums = {
    hash = "sha256-yCXkwqP5oUjaDb0O2PHdVHExlUqlM7bnYDcpyRANiB0=";
    name = "bmips_bcm6318-sha256sums";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6318/sha256sums";
  };
  imagebuilder = {
    sha256 = "db53038f17ac3280493130dffef421befe2dbae1edc1619187580ee829f49083";
    filename = "immortalwrt-imagebuilder-bmips-bcm6318.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-pDmEk8vIp5z63gkKhpukv5TnrEaoD22VRq638ojBMVE=";
    name = "bmips_bcm6318-profiles.json";
    url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6318/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "87d184d189fc94c10c06d6c7027bf73f";
      version = "6.18.60";
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
    kmods_target = "6.18.60-1-87d184d189fc94c10c06d6c7027bf73f";
    profiles = {
      comtrend_ar-5315u = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-43217-sprom"
          "kmod-leds-bcm6328"
        ];
      };
      tp-link_td-w8968-v3 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-usb2"
          "kmod-b43"
          "wpad-basic-openssl"
          "broadcom-43217-sprom"
          "kmod-leds-bcm6328"
        ];
      };
    };
  };
  kmods."6.18.60-1-87d184d189fc94c10c06d6c7027bf73f" = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6318/kmods/6.18.60-1-87d184d189fc94c10c06d6c7027bf73f/";
    sourceInfo = {
      hash = "sha256-fQ6wLFqLRo2yBog585UpdfrTj4R3zBRuERpccIy3z9A=";
      name = "kmods-bmips_bcm6318-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6318/kmods/6.18.60-1-87d184d189fc94c10c06d6c7027bf73f/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6318/packages/";
    sourceInfo = {
      hash = "sha256-WpWtUmezzcz7g5sVSj+vkXWhQxod3/DmpWDBql4dHgs=";
      name = "bmips_bcm6318-packages.adb";
      url = "https://downloads.immortalwrt.org/snapshots/targets/bmips/bcm6318/packages/packages.adb";
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
