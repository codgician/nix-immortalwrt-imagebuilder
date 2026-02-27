# 23.05.7 mpc85xx/p1020
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/mpc85xx/p1020/";
  sha256sums = {
    hash = "sha256-rStSlHxps4gu15dZ+R9x2oAAaSJPYktIg3pJ3DM0S0U=";
    name = "mpc85xx_p1020-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/mpc85xx/p1020/sha256sums";
  };
  imagebuilder = {
    sha256 = "972661c246e276087d0ad1f6fa1d2f3c74b100c0f2d5211df501d64979c31a4e";
    filename = "immortalwrt-imagebuilder-23.05.7-mpc85xx-p1020.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-i/CrVKYzNl0SQ94LfKTO//7E8YHh8wWNaBLDIIot4MQ=";
    name = "mpc85xx_p1020-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/mpc85xx/p1020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "e195b222cc7827b978539252e3594bf9";
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
    kmods_target = "5.15.195-1-e195b222cc7827b978539252e3594bf9";
    profiles = {
      aerohive_hiveap-330 = {
        device_packages = [
          "kmod-tpm-i2c-atmel"
          "kmod-hwmon-lm70"
        ];
      };
      enterasys_ws-ap3710i = {
        device_packages = [ ];
      };
      extreme-networks_ws-ap3825i = {
        device_packages = [
          "kmod-ath10k-ct"
          "ath10k-firmware-qca988x-ct"
        ];
      };
      hpe_msm460 = {
        device_packages = [ ];
      };
      ocedo_panda = {
        device_packages = [ "kmod-rtc-ds1307" ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/mpc85xx/p1020/packages/";
    sourceInfo = {
      hash = "sha256-oZIZDC28hsJD3YYNPFkXPVTQXWIltUvCklVtZouKo1M=";
      name = "mpc85xx_p1020-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/mpc85xx/p1020/packages/Packages";
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
