# 24.10.1 mpc85xx/p1020
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mpc85xx/p1020/";
  sha256sums = {
    hash = "sha256-c0bri23EKypQDkwboSOYe+WTc010ZS34HD6T25bOSA8=";
    name = "mpc85xx_p1020-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mpc85xx/p1020/sha256sums";
  };
  imagebuilder = {
    sha256 = "37585132319d9ddf0552d086351164196d718e3fcbf90f57f3e454051c2643e8";
    filename = "immortalwrt-imagebuilder-24.10.1-mpc85xx-p1020.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-y2wegdYa91M2IY6R88MPzMTxcfN4ZCU/u6fw6krlFXY=";
    name = "mpc85xx_p1020-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mpc85xx/p1020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "69edc11df4fb238b46a7c65a1b8eb591";
      version = "6.6.86";
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
    kmods_target = "6.6.86-1-69edc11df4fb238b46a7c65a1b8eb591";
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
  kmods."6.6.86-1-69edc11df4fb238b46a7c65a1b8eb591" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mpc85xx/p1020/kmods/6.6.86-1-69edc11df4fb238b46a7c65a1b8eb591/";
    sourceInfo = {
      hash = "sha256-DiqLVKliA/v+J3HWoA0szay/eI8tsPDr4OlB0vJ6YDI=";
      name = "kmods-mpc85xx_p1020-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mpc85xx/p1020/kmods/6.6.86-1-69edc11df4fb238b46a7c65a1b8eb591/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mpc85xx/p1020/packages/";
    sourceInfo = {
      hash = "sha256-G7KAqxB/IRn2ZDqyPnolF3EElVcKfQ+Li1SMbj/dRzA=";
      name = "mpc85xx_p1020-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mpc85xx/p1020/packages/Packages";
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
