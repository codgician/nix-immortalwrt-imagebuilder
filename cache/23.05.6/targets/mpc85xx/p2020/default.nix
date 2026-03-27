# 23.05.6 mpc85xx/p2020
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/mpc85xx/p2020/";
  sha256sums = {
    hash = "sha256-y6jkW7tHzuRvmJC1g3Xr2f+FiUOREsz4FD/ptFemjgs=";
    name = "mpc85xx_p2020-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/mpc85xx/p2020/sha256sums";
  };
  imagebuilder = {
    sha256 = "1b3c88fada52cadb0dcebcdaa1cc7995ff337dfc980789f6fdcb6e43cba3ecca";
    filename = "immortalwrt-imagebuilder-23.05.6-mpc85xx-p2020.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-ZWNBH68EtyQz+8WcKsSAXF9Sym8TCx8WgHr1sk+5BOA=";
    name = "mpc85xx_p2020-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/mpc85xx/p2020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "2ef6cdabe87f5583b11904f2eabc7b5b";
      version = "5.15.189";
    };
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall4"
      "fstools"
      "kmod-ath9k"
      "kmod-button-hotplug"
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
      "swconfig"
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "5.15.189-1-2ef6cdabe87f5583b11904f2eabc7b5b";
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
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.6/targets/mpc85xx/p2020/packages/";
    sourceInfo = {
      hash = "sha256-D485kFOFuB+eKkTYLaz3/S5ere+WqfsefbFMRzozOzo=";
      name = "mpc85xx_p2020-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.6/targets/mpc85xx/p2020/packages/Packages";
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
