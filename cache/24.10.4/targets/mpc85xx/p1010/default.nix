# 24.10.4 mpc85xx/p1010
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mpc85xx/p1010/";
  sha256sums = {
    hash = "sha256-PLfeciKft1CmX76OrHj14MNuDzOFwIDFrQoe+frut08=";
    name = "mpc85xx_p1010-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mpc85xx/p1010/sha256sums";
  };
  imagebuilder = {
    sha256 = "217825629235eb38eb53fc53d4430e685cad13d12fc607f08a7eafc3e6b5108a";
    filename = "immortalwrt-imagebuilder-24.10.4-mpc85xx-p1010.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-J03jMi7d+QzxlMvEVObPBUAC8YB7x6N744rgIKJ68Y8=";
    name = "mpc85xx_p1010-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mpc85xx/p1010/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "a5a3f63c107a9b575d9987edbe78ace0";
      version = "6.6.110";
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
    kmods_target = "6.6.110-1-a5a3f63c107a9b575d9987edbe78ace0";
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
  kmods."6.6.110-1-a5a3f63c107a9b575d9987edbe78ace0" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mpc85xx/p1010/kmods/6.6.110-1-a5a3f63c107a9b575d9987edbe78ace0/";
    sourceInfo = {
      hash = "sha256-rUjTtLBQGxuvjM44BB0jvDSKsWk6tSRNGPjsvi/9slU=";
      name = "kmods-mpc85xx_p1010-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mpc85xx/p1010/kmods/6.6.110-1-a5a3f63c107a9b575d9987edbe78ace0/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mpc85xx/p1010/packages/";
    sourceInfo = {
      hash = "sha256-TnrVt7T/+DkyPGm6FY5V7/i3JjgsKs5Q4tqrjgSKi7U=";
      name = "mpc85xx_p1010-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.4/targets/mpc85xx/p1010/packages/Packages";
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
