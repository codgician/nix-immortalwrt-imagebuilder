# 24.10.2 mpc85xx/p1020
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mpc85xx/p1020/";
  sha256sums = {
    hash = "sha256-zZvmaZOfIA6eh02CzkZOGs7dmOmbjMmOJzCi84Erlog=";
    name = "mpc85xx_p1020-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mpc85xx/p1020/sha256sums";
  };
  imagebuilder = {
    sha256 = "51467a21e7ce9678968ccbdcdfe120ef59b0a55a2a59c2131a386c13b967a45f";
    filename = "immortalwrt-imagebuilder-24.10.2-mpc85xx-p1020.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-Kp5mA9ELlFxaGjWQS2ptyOW3uyOcJkvb+qVy/rp+Bkg=";
    name = "mpc85xx_p1020-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mpc85xx/p1020/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "d8c72b71b4189bf9078cf3dff9b7ddaa";
      version = "6.6.93";
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
    kmods_target = "6.6.93-1-d8c72b71b4189bf9078cf3dff9b7ddaa";
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
  kmods."6.6.93-1-d8c72b71b4189bf9078cf3dff9b7ddaa" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mpc85xx/p1020/kmods/6.6.93-1-d8c72b71b4189bf9078cf3dff9b7ddaa/";
    sourceInfo = {
      hash = "sha256-H1BYW+pBQaXDX1/3aqtX5gsyhrHS44A4uiX/MKyeBCQ=";
      name = "kmods-mpc85xx_p1020-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mpc85xx/p1020/kmods/6.6.93-1-d8c72b71b4189bf9078cf3dff9b7ddaa/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mpc85xx/p1020/packages/";
    sourceInfo = {
      hash = "sha256-X2xBEPcUjgBPVc2K2kVO1j9P6nKpGuTG2mTQZvIB6M0=";
      name = "mpc85xx_p1020-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.2/targets/mpc85xx/p1020/packages/Packages";
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
