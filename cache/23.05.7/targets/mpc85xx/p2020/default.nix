# 23.05.7 mpc85xx/p2020
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/mpc85xx/p2020/";
  sha256sums = {
    hash = "sha256-/7NWHwxaqJexEFAsQWVJW5M/pfkSUzmq0pA3NRV0H/E=";
    name = "mpc85xx_p2020-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/mpc85xx/p2020/sha256sums";
  };
  imagebuilder = {
    sha256 = "e4467f78b1126d67411acda75e5e93d6665a0cf95bb148fa06a34d49b280188a";
    filename = "immortalwrt-imagebuilder-23.05.7-mpc85xx-p2020.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-4l9i7ggbeVAH2hL9CP1jSfidSNxtmBpupuvDUfrphyg=";
    name = "mpc85xx_p2020-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/mpc85xx/p2020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "2ef6cdabe87f5583b11904f2eabc7b5b";
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
    kmods_target = "5.15.195-1-2ef6cdabe87f5583b11904f2eabc7b5b";
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
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/mpc85xx/p2020/packages/";
    sourceInfo = {
      hash = "sha256-Or2jyORIXF2HwT3j/Mfgtcpdca1ZMhlFHTF5VQ7ouoI=";
      name = "mpc85xx_p2020-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/mpc85xx/p2020/packages/Packages";
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
