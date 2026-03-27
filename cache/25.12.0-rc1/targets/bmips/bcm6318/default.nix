# 25.12.0-rc1 bmips/bcm6318
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bmips/bcm6318/";
  sha256sums = {
    hash = "sha256-AnmuO2wRz7OdDYqgSSXRRkUn1iBkHnai0NcugdJihvg=";
    name = "bmips_bcm6318-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bmips/bcm6318/sha256sums";
  };
  imagebuilder = {
    sha256 = "0781d9d6f103b329800b333c4cedee753d346a844b1f9c68253b8fd7f4b15adf";
    filename = "immortalwrt-imagebuilder-25.12.0-rc1-bmips-bcm6318.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-sVfgAZNEU6D2IS7pilCPnQfneJtqggIG/wM1u/Oezgk=";
    name = "bmips_bcm6318-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bmips/bcm6318/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "901aa149a7e6921a857294f08071f481";
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
      "ethtool"
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
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.74-1-901aa149a7e6921a857294f08071f481";
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
  kmods."6.12.74-1-901aa149a7e6921a857294f08071f481" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bmips/bcm6318/kmods/6.12.74-1-901aa149a7e6921a857294f08071f481/";
    sourceInfo = {
      hash = "sha256-klUSwLoOqaZX4WgMQi/jK8sJfDT62KqV1NWXyJ1r4yQ=";
      name = "kmods-bmips_bcm6318-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bmips/bcm6318/kmods/6.12.74-1-901aa149a7e6921a857294f08071f481/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bmips/bcm6318/packages/";
    sourceInfo = {
      hash = "sha256-zUh4OLoYQWXGLBfaPzLzimzYROacTeFf+p1f3NdbD4A=";
      name = "bmips_bcm6318-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc1/targets/bmips/bcm6318/packages/packages.adb";
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
