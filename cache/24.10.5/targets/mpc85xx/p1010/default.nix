# 24.10.5 mpc85xx/p1010
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mpc85xx/p1010/";
  sha256sums = {
    hash = "sha256-MMj+LJM+pwv9dCNl2GIQsi5rIBuHIAVSR6UTBEBIhkw=";
    name = "mpc85xx_p1010-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mpc85xx/p1010/sha256sums";
  };
  imagebuilder = {
    sha256 = "7de0cb3e5f5bbfbc7d3b64ebd584c0353f454026948681c7471d031303f6caf0";
    filename = "immortalwrt-imagebuilder-24.10.5-mpc85xx-p1010.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-PTV8H5ZoqzkUFJbyzN2+38HPr2VBDj9o0FxDEPUrBR4=";
    name = "mpc85xx_p1010-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mpc85xx/p1010/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "12d2809c67b353539a7c1102236dfa5d";
      version = "6.6.122";
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
    kmods_target = "6.6.122-1-12d2809c67b353539a7c1102236dfa5d";
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
  kmods."6.6.122-1-12d2809c67b353539a7c1102236dfa5d" = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mpc85xx/p1010/kmods/6.6.122-1-12d2809c67b353539a7c1102236dfa5d/";
    sourceInfo = {
      hash = "sha256-mUat8xNziZEx3HLE5byZCfGcaxoTx6vnKBNIOwVchQ8=";
      name = "kmods-mpc85xx_p1010-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mpc85xx/p1010/kmods/6.6.122-1-12d2809c67b353539a7c1102236dfa5d/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mpc85xx/p1010/packages/";
    sourceInfo = {
      hash = "sha256-UENfb9zpeNJ71Jzbe7S0ZbQfjd1+iZbf2AnW31K0Wx0=";
      name = "mpc85xx_p1010-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/24.10.5/targets/mpc85xx/p1010/packages/Packages";
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
