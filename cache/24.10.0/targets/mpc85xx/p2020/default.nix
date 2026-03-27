# 24.10.0 mpc85xx/p2020
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mpc85xx/p2020/";
  sha256sums = {
    hash = "sha256-5CmP6lAMe3niazMhtKyX69qaWOvJ0Zloy6f1+nQiy3o=";
    name = "mpc85xx_p2020-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mpc85xx/p2020/sha256sums";
  };
  imagebuilder = {
    sha256 = "01b22d4f41bad44b47c37bb82d46f96a08c553988467a166359aa17b8472f1d5";
    filename = "immortalwrt-imagebuilder-24.10.0-mpc85xx-p2020.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-29aTdy49va6tGwuza4S0USoPtbzuVfya+1mAdQqpCH4=";
    name = "mpc85xx_p2020-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mpc85xx/p2020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "af14059d4f46c26509b62ba361fa838b";
      version = "6.6.73";
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
      "wpad-basic-openssl"
    ];
    kmods_target = "6.6.73-1-af14059d4f46c26509b62ba361fa838b";
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
  kmods."6.6.73-1-af14059d4f46c26509b62ba361fa838b" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mpc85xx/p2020/kmods/6.6.73-1-af14059d4f46c26509b62ba361fa838b/";
    sourceInfo = {
      hash = "sha256-xaESQKtH2VXgnUGjK+gv3ChABvZDf/uVMKVsHuE2KKc=";
      name = "kmods-mpc85xx_p2020-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mpc85xx/p2020/kmods/6.6.73-1-af14059d4f46c26509b62ba361fa838b/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mpc85xx/p2020/packages/";
    sourceInfo = {
      hash = "sha256-/G2cSbZIUh7lXkKeXbmVBpuAqz2UOUgJX5aqlsWg4aI=";
      name = "mpc85xx_p2020-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/mpc85xx/p2020/packages/Packages";
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
