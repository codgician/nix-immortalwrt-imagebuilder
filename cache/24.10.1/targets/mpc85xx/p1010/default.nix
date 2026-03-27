# 24.10.1 mpc85xx/p1010
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mpc85xx/p1010/";
  sha256sums = {
    hash = "sha256-LNAzwpSqkoLPRoV/sDD0I9dmAP46/cVWbnR3hz5UMH0=";
    name = "mpc85xx_p1010-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mpc85xx/p1010/sha256sums";
  };
  imagebuilder = {
    sha256 = "025efdd61d3f808b53cc0eeb2b968e7f68a33df71f78789dc06ad2857c543333";
    filename = "immortalwrt-imagebuilder-24.10.1-mpc85xx-p1010.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-n1jcvu+b86t67wkvgXk+ETzPM/C7jg9uwZncDhBmO/s=";
    name = "mpc85xx_p1010-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mpc85xx/p1010/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "f05e4c38395b686b01c86a8ecffa7168";
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
    kmods_target = "6.6.86-1-f05e4c38395b686b01c86a8ecffa7168";
    profiles = {
      aerohive_br200-wp = {
        device_packages = [ ];
      };
      enterasys_ws-ap3715i = {
        device_packages = [ ];
      };
      sophos_red-15w-rev1 = {
        device_packages = [ ];
      };
      tplink_tl-wdr4900-v1 = {
        device_packages = [ "kmod-usb-ledtrig-usbport" ];
      };
      watchguard_firebox-t10 = {
        device_packages = [
          "kmod-rtc-s35390a"
          "kmod-eeprom-at24"
        ];
      };
    };
  };
  kmods."6.6.86-1-f05e4c38395b686b01c86a8ecffa7168" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mpc85xx/p1010/kmods/6.6.86-1-f05e4c38395b686b01c86a8ecffa7168/";
    sourceInfo = {
      hash = "sha256-vgmuVxzsZ2NSeZtV8+zj5PlMF8BNAp6KG5Ako2pyhEM=";
      name = "kmods-mpc85xx_p1010-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mpc85xx/p1010/kmods/6.6.86-1-f05e4c38395b686b01c86a8ecffa7168/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mpc85xx/p1010/packages/";
    sourceInfo = {
      hash = "sha256-AgWRnhhCXGg/vKjUPKi7OoO5s/FyqtR3bYiPeJ9Btcc=";
      name = "mpc85xx_p1010-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.1/targets/mpc85xx/p1010/packages/Packages";
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
