# 23.05.7 bmips/bcm6318
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bmips/bcm6318/";
  sha256sums = {
    hash = "sha256-OCjSs3vYJjFYa1bFp0nMwK/cKbOKXh9Ubz8j1dnbp+8=";
    name = "bmips_bcm6318-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bmips/bcm6318/sha256sums";
  };
  imagebuilder = {
    sha256 = "0ecc9d7b3304dd1e296e0e36c3f184f94a06d575d3c3b43f4987c88bca06822a";
    filename = "immortalwrt-imagebuilder-23.05.7-bmips-bcm6318.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-krN5A+/MJzb1flquj6BdccQhFQ2erTb6IiiWPWymTlI=";
    name = "bmips_bcm6318-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bmips/bcm6318/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "6f95cc64d7c1eb11e110fdbd16e30a54";
      version = "5.15.195";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "ethtool"
      "firewall4"
      "fstools"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-opkg"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "procd-seccomp"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "5.15.195-1-6f95cc64d7c1eb11e110fdbd16e30a54";
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
          "iwinfo"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bmips/bcm6318/packages/";
    sourceInfo = {
      hash = "sha256-ZCNS3Pz6iqZrS8AaWfyJN7rjfdpgfhA0Ac6ySWjABJM=";
      name = "bmips_bcm6318-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bmips/bcm6318/packages/Packages";
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
