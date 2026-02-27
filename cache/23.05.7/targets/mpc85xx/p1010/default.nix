# 23.05.7 mpc85xx/p1010
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/mpc85xx/p1010/";
  sha256sums = {
    hash = "sha256-1iDo7X9dRkfv4MKrneRxB1eaebqZeUe3Wr84Lp+mi2I=";
    name = "mpc85xx_p1010-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/mpc85xx/p1010/sha256sums";
  };
  imagebuilder = {
    sha256 = "024e98d420d522a48bc0f75e7d2deb221ea9c02523c3835230eea3bd8e5a4355";
    filename = "immortalwrt-imagebuilder-23.05.7-mpc85xx-p1010.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-i2q7+5kzfry4e6S90Vo9LSMJqXzYXXzZAGgCR68Ubfg=";
    name = "mpc85xx_p1010-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/mpc85xx/p1010/profiles.json";
  };
  profiles.extract = {
    arch_packages = "powerpc_8548";
    linux_kernel = {
      release = "1";
      vermagic = "510c9aea0a67f22288e6acb61859dee8";
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
    kmods_target = "5.15.195-1-510c9aea0a67f22288e6acb61859dee8";
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
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/mpc85xx/p1010/packages/";
    sourceInfo = {
      hash = "sha256-eDwYHleuNUllzq0XSu+BmuW/6uVAL4nraFXRQ4OZccQ=";
      name = "mpc85xx_p1010-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/mpc85xx/p1010/packages/Packages";
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
