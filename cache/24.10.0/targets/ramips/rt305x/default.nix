# 24.10.0 ramips/rt305x
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ramips/rt305x/";
  sha256sums = {
    hash = "sha256-4Gf4U6NfwVfNLC2hIs2WGCCYeoos5Q1PNuhymFBPpQo=";
    name = "ramips_rt305x-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ramips/rt305x/sha256sums";
  };
  imagebuilder = {
    sha256 = "c53255c4472b2fd67ae1e1667778970bd87ebc8d107cb30995df5c5bd143048e";
    filename = "immortalwrt-imagebuilder-24.10.0-ramips-rt305x.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-mXp5kUK+9u/S5g8FWWl+B+hHLErbp3JbgsYKnhqgHfE=";
    name = "ramips_rt305x-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ramips/rt305x/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "a3436bd91ab7a51566d109aba29fbb58";
      version = "6.6.73";
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
      "kmod-gpio-button-hotplug"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
      "kmod-rt2800-soc"
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
      "swconfig"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "6.6.73-1-a3436bd91ab7a51566d109aba29fbb58";
    profiles = {
      allnet_all5002 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-usb-ledtrig-usbport"
          "kmod-i2c-gpio"
          "kmod-hwmon-lm92"
          "kmod-gpio-pcf857x"
        ];
      };
      argus_atp-52b = {
        device_packages = [ ];
      };
      fon_fonera-20n = {
        device_packages = [
          "kmod-usb-dwc2"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      hauppauge_broadway = {
        device_packages = [
          "kmod-usb-dwc2"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      nexaira_bc2 = {
        device_packages = [ ];
      };
      omnima_miniembplug = {
        device_packages = [ ];
      };
      poray_ip2202 = {
        device_packages = [ ];
      };
      wansview_ncs601w = {
        device_packages = [
          "kmod-video-core"
          "kmod-video-uvc"
          "kmod-usb-ohci"
        ];
      };
      zte_mf283plus = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
          "kmod-usb-net-qmi-wwan"
          "uqmi"
          "kmod-usb-serial"
          "kmod-usb-serial-option"
        ];
      };
      zyxel_nbg-419n-v2 = {
        device_packages = [ ];
      };
    };
  };
  kmods."6.6.73-1-a3436bd91ab7a51566d109aba29fbb58" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ramips/rt305x/kmods/6.6.73-1-a3436bd91ab7a51566d109aba29fbb58/";
    sourceInfo = {
      hash = "sha256-oPxNAy7DNVClkoPqK2oW8hAIxHBiUeLAReZuUW9MsW0=";
      name = "kmods-ramips_rt305x-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ramips/rt305x/kmods/6.6.73-1-a3436bd91ab7a51566d109aba29fbb58/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ramips/rt305x/packages/";
    sourceInfo = {
      hash = "sha256-+RO1dDGLWGXCcajltXCfcbVrZMlJvGkVk1geXw9EuNk=";
      name = "ramips_rt305x-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ramips/rt305x/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mipsel_24kc";
  feeds = import ./../../../packages/mipsel_24kc.nix;
}
