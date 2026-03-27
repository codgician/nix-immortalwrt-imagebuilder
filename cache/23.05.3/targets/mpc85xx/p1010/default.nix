# 23.05.3 mpc85xx/p1010
{
  baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/targets/mpc85xx/p1010/";
  sha256sums = {
    hash = "sha256-K6QDyJhHoUwKWqcq1AYYnQgGGzWU7K66dMI2DY5NjZE=";
    name = "mpc85xx_p1010-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/mpc85xx/p1010/sha256sums";
  };
  imagebuilder = {
    sha256 = "f3eb9b06d2e327d4e8114b4d0c5a971a85ee4c0a4d12663c066f0b338f1e5aee";
    filename = "immortalwrt-imagebuilder-23.05.3-mpc85xx-p1010.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-wf3BGUcj38IN5D8DPBxIQW+kfESVqYZnraoq4i09msI=";
    name = "mpc85xx_p1010-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/mpc85xx/p1010/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = null;
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
      "ipv6helper"
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
    kmods_target = "null-null-null";
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
        device_packages = [ ];
      };
      watchguard_firebox-t10 = {
        device_packages = [
          "kmod-rtc-s35390a"
          "kmod-eeprom-at24"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/23.05.3/targets/mpc85xx/p1010/packages/";
    sourceInfo = {
      hash = "sha256-2M9P8H5VLfszneMXoLN1Mz4ItJ+BxSUBGjK28NbiGDE=";
      name = "mpc85xx_p1010-Packages";
      url = "https://downloads.immortalwrt.org/releases/23.05.3/targets/mpc85xx/p1010/packages/Packages";
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
