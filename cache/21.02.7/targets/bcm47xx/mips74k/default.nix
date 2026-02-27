# 21.02.7 bcm47xx/mips74k
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm47xx/mips74k/";
  sha256sums = {
    hash = "sha256-nT4gCtaQMlnZnL2LKZWTlNN9eG3TdkDXwnnqEw71f7Y=";
    name = "bcm47xx_mips74k-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm47xx/mips74k/sha256sums";
  };
  imagebuilder = {
    sha256 = "322f1d86cc3ec1f450bbe078fdc682e16cf626b8fe5385706a25bce7b4717798";
    filename = "immortalwrt-imagebuilder-21.02.7-bcm47xx-mips74k.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-rWX5FyZVDVH7FHrjPRUnxaQ+MIQUv2U7wMBIb1QXXLY=";
    name = "bcm47xx_mips74k-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm47xx/mips74k/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mipsel_74kc";
    linux_kernel = null;
    default_packages = [
      "base-files"
      "block-mount"
      "busybox"
      "ca-bundle"
      "default-settings-chn"
      "dnsmasq-full"
      "dropbear"
      "firewall"
      "fstools"
      "iptables"
      "ipv6helper"
      "kmod-gpio-button-hotplug"
      "kmod-ipt-raw"
      "kmod-leds-gpio"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "libc"
      "libgcc"
      "libustream-openssl"
      "logd"
      "luci"
      "luci-app-filetransfer"
      "luci-app-turboacc"
      "luci-compat"
      "luci-lib-base"
      "luci-lib-fs"
      "luci-lib-ipkg"
      "mtd"
      "netifd"
      "nvram"
      "opkg"
      "otrx"
      "ppp"
      "ppp-mod-pppoe"
      "procd"
      "swconfig"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "null-null-null";
    profiles = {
      asus_rt-ac53u = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      asus_rt-n10 = {
        device_packages = [ "kmod-b43" ];
      };
      asus_rt-n10p = {
        device_packages = [ "kmod-b43" ];
      };
      asus_rt-n10p-v2 = {
        device_packages = [ ];
      };
      asus_rt-n10u = {
        device_packages = [
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      asus_rt-n10u-b = {
        device_packages = [
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      asus_rt-n12 = {
        device_packages = [ "kmod-b43" ];
      };
      asus_rt-n12-b1 = {
        device_packages = [ ];
      };
      asus_rt-n12-c1 = {
        device_packages = [ ];
      };
      asus_rt-n12-d1 = {
        device_packages = [ ];
      };
      asus_rt-n12hp = {
        device_packages = [ ];
      };
      asus_rt-n14uhp = {
        device_packages = [
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      asus_rt-n15u = {
        device_packages = [
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      asus_rt-n16 = {
        device_packages = [
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      asus_rt-n53 = {
        device_packages = [ "kmod-b43" ];
      };
      asus_rt-n66u = {
        device_packages = [
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      asus_rt-n66w = {
        device_packages = [
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      linksys_e1000 = {
        device_packages = [ "kmod-b43" ];
      };
      linksys_e1200-v1 = {
        device_packages = [ ];
      };
      linksys_e1200-v2 = {
        device_packages = [ ];
      };
      linksys_e1500-v1 = {
        device_packages = [ ];
      };
      linksys_e1550-v1 = {
        device_packages = [
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      linksys_e2000-v1 = {
        device_packages = [ "kmod-b43" ];
      };
      linksys_e2500-v1 = {
        device_packages = [ "kmod-b43" ];
      };
      linksys_e2500-v2 = {
        device_packages = [ "kmod-b43" ];
      };
      "linksys_e2500-v2.1" = {
        device_packages = [ "kmod-b43" ];
      };
      linksys_e2500-v3 = {
        device_packages = [ "kmod-b43" ];
      };
      linksys_e3200-v1 = {
        device_packages = [ "kmod-b43" ];
      };
      linksys_e4200-v1 = {
        device_packages = [
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      linksys_e900-v1 = {
        device_packages = [ ];
      };
      linksys_wrt310n-v2 = {
        device_packages = [ "kmod-b43" ];
      };
      linksys_wrt320n-v1 = {
        device_packages = [ "kmod-b43" ];
      };
      netgear_r6200-v1 = {
        device_packages = [
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      netgear_wgr614-v10 = {
        device_packages = [ ];
      };
      netgear_wgr614-v10-na = {
        device_packages = [ ];
      };
      netgear_wn2500rp-v1 = {
        device_packages = [ "kmod-b43" ];
      };
      netgear_wn3000rp = {
        device_packages = [ ];
      };
      netgear_wndr3400-v1 = {
        device_packages = [
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      netgear_wndr3400-v2 = {
        device_packages = [
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      netgear_wndr3400-v3 = {
        device_packages = [
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      netgear_wndr3700-v3 = {
        device_packages = [
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      netgear_wndr4000 = {
        device_packages = [
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      netgear_wnr1000-v3 = {
        device_packages = [ ];
      };
      netgear_wnr2000v2 = {
        device_packages = [ "kmod-b43" ];
      };
      netgear_wnr3500-v2 = {
        device_packages = [ "kmod-b43" ];
      };
      netgear_wnr3500l-v1 = {
        device_packages = [
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      netgear_wnr3500l-v1-na = {
        device_packages = [
          "kmod-b43"
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      netgear_wnr3500l-v2 = {
        device_packages = [
          "kmod-usb-ohci"
          "kmod-usb2"
        ];
      };
      standard = {
        device_packages = [ ];
      };
      standard-noloader-nodictionarylzma = {
        device_packages = [ ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm47xx/mips74k/packages/";
    sourceInfo = {
      hash = "sha256-2ZELn7IC+KRFUA/3e4jWVGiDYAQwZnwdtatlUXhJKQY=";
      name = "bcm47xx_mips74k-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/21.02.7/targets/bcm47xx/mips74k/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mipsel_74kc";
  feeds = import ./../../../packages/mipsel_74kc.nix;
}
