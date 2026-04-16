# 25.12.0-rc2 bmips/bcm6318
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bmips/bcm6318/";
  sha256sums = {
    hash = "sha256-dYYSLk9rDcd2r7vUGyThAFCsz3HC6AtlaL5qddYCPnA=";
    name = "bmips_bcm6318-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bmips/bcm6318/sha256sums";
  };
  imagebuilder = {
    sha256 = "9074ee51752e01c8a059477730aef6a55690e69111e2aea4a339be4a89eb1f47";
    filename = "immortalwrt-imagebuilder-25.12.0-rc2-bmips-bcm6318.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-4cWNPt0hNcR97ypH474lWzXolY6XgCIAG6M5WcX17K8=";
    name = "bmips_bcm6318-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bmips/bcm6318/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "3185c1e81aaab3a25a9e84534ffa390d";
      version = "6.12.79";
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
    kmods_target = "6.12.79-1-3185c1e81aaab3a25a9e84534ffa390d";
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
  kmods."6.12.79-1-3185c1e81aaab3a25a9e84534ffa390d" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bmips/bcm6318/kmods/6.12.79-1-3185c1e81aaab3a25a9e84534ffa390d/";
    sourceInfo = {
      hash = "sha256-rTqjWYgCi5D1jf5GnMyltSis6WOamF3teWWkWnG5ibc=";
      name = "kmods-bmips_bcm6318-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bmips/bcm6318/kmods/6.12.79-1-3185c1e81aaab3a25a9e84534ffa390d/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bmips/bcm6318/packages/";
    sourceInfo = {
      hash = "sha256-66nMhzDgIslupUyjZqhf6QIe10QpmZ8pIQzyQOibHAQ=";
      name = "bmips_bcm6318-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.0-rc2/targets/bmips/bcm6318/packages/packages.adb";
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
