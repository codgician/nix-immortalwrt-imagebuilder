# 24.10.3 mpc85xx/p1020
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/mpc85xx/p1020/";
  sha256sums = {
    hash = "sha256-I1pZrn/u8rDvG+d0XMH2aA67MjB1pg93bCqDc15Bgp4=";
    name = "mpc85xx_p1020-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/mpc85xx/p1020/sha256sums";
  };
  imagebuilder = {
    sha256 = "846299bd0f0b35b64b544417b34f2caed9bd9a338f4e7f2d45d7a808d3831861";
    filename = "immortalwrt-imagebuilder-24.10.3-mpc85xx-p1020.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-elaHzI7bI8wfQRXZWkbnLbf/25k9ph+4+5lWLRYgt+Q=";
    name = "mpc85xx_p1020-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/mpc85xx/p1020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "d8c72b71b4189bf9078cf3dff9b7ddaa";
      version = "6.6.104";
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
    kmods_target = "6.6.104-1-d8c72b71b4189bf9078cf3dff9b7ddaa";
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
  kmods."6.6.104-1-d8c72b71b4189bf9078cf3dff9b7ddaa" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/mpc85xx/p1020/kmods/6.6.104-1-d8c72b71b4189bf9078cf3dff9b7ddaa/";
    sourceInfo = {
      hash = "sha256-nKCMONXc/QLNgDo4eshbZOFxuC44gC45hxUE6J3ZQtA=";
      name = "kmods-mpc85xx_p1020-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/mpc85xx/p1020/kmods/6.6.104-1-d8c72b71b4189bf9078cf3dff9b7ddaa/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/mpc85xx/p1020/packages/";
    sourceInfo = {
      hash = "sha256-l9Yl5go/1RWeDzk57VeIP7lvja0Jh6ZQEHsC+4GYGSw=";
      name = "mpc85xx_p1020-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/mpc85xx/p1020/packages/Packages";
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
