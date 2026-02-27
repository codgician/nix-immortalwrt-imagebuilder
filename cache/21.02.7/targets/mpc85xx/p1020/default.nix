# 21.02.7 mpc85xx/p1020
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mpc85xx/p1020/";
  sha256sums = {
    hash = "sha256-eM3zjnTcGgXDBe2XOhU5oF3v7l3Kfmo2vXGZb0bIuZM=";
    name = "mpc85xx_p1020-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mpc85xx/p1020/sha256sums";
  };
  imagebuilder = {
    sha256 = "962364b943bbbe538726304d4aecddcc09599ffc91c3e0093de17a0e53e3e1da";
    filename = "immortalwrt-imagebuilder-21.02.7-mpc85xx-p1020.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-U4IScTZVpCi9x59JzPC84HddItfCY6ZBx7ncs+QLiNQ=";
    name = "mpc85xx_p1020-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mpc85xx/p1020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8540";
    linux_kernel = null;
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall"
      "fstools"
      "iptables"
      "ipv6helper"
      "kmod-ath9k"
      "kmod-button-hotplug"
      "kmod-input-core"
      "kmod-input-gpio-keys"
      "kmod-ipt-raw"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-usb2"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-filetransfer"
      "luci-app-turboacc"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "opkg"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "swconfig"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "null-null-null";
    profiles = {
      aerohive_hiveap-330 = {
        device_packages = [ "kmod-tpm-i2c-atmel" ];
      };
      enterasys_ws-ap3710i = {
        device_packages = [ ];
      };
      ocedo_panda = {
        device_packages = [
          "kmod-rtc-ds1307"
          "uboot-envtools"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mpc85xx/p1020/packages/";
    sourceInfo = {
      hash = "sha256-ZeeLiwmImn2blTEtmNhDbw0NIM331VLOmEXUAqj6Qiw=";
      name = "mpc85xx_p1020-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/mpc85xx/p1020/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "powerpc_8540";
  feeds = import ./../../../packages/powerpc_8540.nix;
}
