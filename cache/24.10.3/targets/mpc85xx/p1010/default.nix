# 24.10.3 mpc85xx/p1010
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/mpc85xx/p1010/";
  sha256sums = {
    hash = "sha256-zE2RzevVVLae6xiwpRWGDgxXbAW/jplzCvpyl4zj8EI=";
    name = "mpc85xx_p1010-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/mpc85xx/p1010/sha256sums";
  };
  imagebuilder = {
    sha256 = "1461465c4bf503a98f60aa2d706306c13c1d366b003cd54cccc1a7fcca455ed5";
    filename = "immortalwrt-imagebuilder-24.10.3-mpc85xx-p1010.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-+ugZUc7CTVZDL02jUM39T/hHC2l8sEo3Uo4deUq4ztU=";
    name = "mpc85xx_p1010-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/mpc85xx/p1010/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "a01b9d794f8546643754ac6e200789b3";
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
    kmods_target = "6.6.104-1-a01b9d794f8546643754ac6e200789b3";
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
  kmods."6.6.104-1-a01b9d794f8546643754ac6e200789b3" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/mpc85xx/p1010/kmods/6.6.104-1-a01b9d794f8546643754ac6e200789b3/";
    sourceInfo = {
      hash = "sha256-BOUorqscGnfaHHmGQOc2atWQ/oebOM7VJzXRWOgffeU=";
      name = "kmods-mpc85xx_p1010-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/mpc85xx/p1010/kmods/6.6.104-1-a01b9d794f8546643754ac6e200789b3/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/mpc85xx/p1010/packages/";
    sourceInfo = {
      hash = "sha256-uv1ajqjCa//OTN+2MBsXb2+k6t32zb6WLAWLdPsir/g=";
      name = "mpc85xx_p1010-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/mpc85xx/p1010/packages/Packages";
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
