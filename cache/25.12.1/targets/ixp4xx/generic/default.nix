# 25.12.1 ixp4xx/generic
{
  baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/ixp4xx/generic/";
  sha256sums = {
    hash = "sha256-1u4oT/dTUagvsqI4sgqhFe8NAm/I1zX+z3c+2OgVHbg=";
    name = "ixp4xx_generic-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/ixp4xx/generic/sha256sums";
  };
  imagebuilder = {
    sha256 = "0ab126ed27fea3d7084e9281ef21ff624e14cf00497825cbaa94eb166f3fb614";
    filename = "immortalwrt-imagebuilder-25.12.1-ixp4xx-generic.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-XGgntwi+PXHQbykMJJrMYzrz2GVVgjYIn3+koK/u6l8=";
    name = "ixp4xx_generic-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/ixp4xx/generic/profiles.json";
  };
  profiles.extract = {
    arch_packages = "armeb_xscale";
    linux_kernel = {
      release = "1";
      vermagic = "5f2f3c152be31c54cc9ba3fba6780675";
      version = "6.12.94";
    };
    default_packages = [
      "apk-openssl"
      "base-files"
      "block-mount"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "fconfig"
      "firewall4"
      "fstools"
      "kmod-crypto-hw-ixp4xx"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nft-offload"
      "kmod-usb-ledtrig-usbport"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "mtd"
      "netifd"
      "nftables"
      "odhcp6c"
      "odhcpd-ipv6only"
      "ppp"
      "ppp-mod-pppoe"
      "procd-ujail"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "6.12.94-1-5f2f3c152be31c54cc9ba3fba6780675";
    profiles = {
      dlink_dsm_g600_a = {
        device_packages = [
          "ixp4xx-microcode-ethernet"
          "kmod-rtc-pcf8563"
          "kmod-via-velocity"
          "kmod-ata-artop"
          "kmod-ath5k"
          "wpad-openssl"
        ];
      };
      gateworks_avila = {
        device_packages = [
          "ixp4xx-microcode-ethernet"
          "kmod-rtc-ds1672"
          "kmod-eeprom-at24"
          "kmod-hwmon-ad7418"
        ];
      };
      gateworks_cambria = {
        device_packages = [
          "ixp4xx-microcode-ethernet"
          "kmod-rtc-ds1672"
          "kmod-eeprom-at24"
          "kmod-hwmon-ad7418"
        ];
      };
      iomega_nas100d = {
        device_packages = [
          "ixp4xx-microcode-ethernet"
          "kmod-rtc-pcf8563"
        ];
      };
      usrobotics_usr8200 = {
        device_packages = [
          "ixp4xx-microcode-ethernet"
          "kmod-rtc-r7301"
          "kmod-firewire"
          "kmod-firewire-ohci"
          "kmod-dsa-mv88e6060"
        ];
      };
    };
  };
  kmods."6.12.94-1-5f2f3c152be31c54cc9ba3fba6780675" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/ixp4xx/generic/kmods/6.12.94-1-5f2f3c152be31c54cc9ba3fba6780675/";
    sourceInfo = {
      hash = "sha256-biKl3ohe8qrudBn4DGYC6fUr/SUFmOnNisjikTRmRpU=";
      name = "kmods-ixp4xx_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/ixp4xx/generic/kmods/6.12.94-1-5f2f3c152be31c54cc9ba3fba6780675/packages.adb";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/25.12.1/targets/ixp4xx/generic/packages/";
    sourceInfo = {
      hash = "sha256-zyqpPlh9z7eubriUXCZb/UdVu+J/+gqiZQ0oOnPHiIU=";
      name = "ixp4xx_generic-packages.adb";
      url = "https://downloads.immortalwrt.org/releases/25.12.1/targets/ixp4xx/generic/packages/packages.adb";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "armeb_xscale";
  feeds = import ./../../../packages/armeb_xscale.nix;
}
