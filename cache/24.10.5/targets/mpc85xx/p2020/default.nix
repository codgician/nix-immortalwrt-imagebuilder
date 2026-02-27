# 24.10.5 mpc85xx/p2020
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mpc85xx/p2020/";
  sha256sums = {
    hash = "sha256-A6fdlVUZCpyNiBQsHXPFu/ud4BVjT499esTU7Z2cyxw=";
    name = "mpc85xx_p2020-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mpc85xx/p2020/sha256sums";
  };
  imagebuilder = {
    sha256 = "e2dfa19301a2ba82e3f1474033f2b4704b16eca9bd54d20cebc060cd5f5a6858";
    filename = "immortalwrt-imagebuilder-24.10.5-mpc85xx-p2020.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-uxXpeK2OSy6A5+yKfJuGZ+v5agxgPUy+yix8VzvzSsw=";
    name = "mpc85xx_p2020-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mpc85xx/p2020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "6bcb210a090eae90afc9afd1be8e7b37";
      version = "6.6.122";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-ath9k"
      "kmod-button-hotplug"
      "kmod-crypto-hw-talitos"
      "kmod-input-core"
      "kmod-input-gpio-keys"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-usb2"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci-app-package-manager"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-ipkg"
      "luci-light"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "swconfig"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-openssl"
    ];
    kmods_target = "6.6.122-1-6bcb210a090eae90afc9afd1be8e7b37";
    profiles = {
      freescale_p2020rdb = {
        device_packages = [
          "kmod-hwmon-lm90"
          "kmod-rtc-ds1307"
          "kmod-gpio-pca953x"
          "kmod-eeprom-at24"
        ];
      };
    };
  };
  kmods."6.6.122-1-6bcb210a090eae90afc9afd1be8e7b37" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mpc85xx/p2020/kmods/6.6.122-1-6bcb210a090eae90afc9afd1be8e7b37/";
    sourceInfo = {
      hash = "sha256-C/LbtEIU4LREzJ2J1DxMMhZ/wqYQ7LVg02gjN6ww2L8=";
      name = "kmods-mpc85xx_p2020-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mpc85xx/p2020/kmods/6.6.122-1-6bcb210a090eae90afc9afd1be8e7b37/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mpc85xx/p2020/packages/";
    sourceInfo = {
      hash = "sha256-o+TX3BYwWDqXPClIx2BRNqfJZYuXOdkY/mG6tQJzvS4=";
      name = "mpc85xx_p2020-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mpc85xx/p2020/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "powerpc_8548";
  feeds = import ./../../../packages/powerpc_8548.nix;
}
