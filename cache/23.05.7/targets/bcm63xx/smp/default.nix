# 23.05.7 bcm63xx/smp
{
  baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bcm63xx/smp/";
  sha256sums = {
    hash = "sha256-k/CBEVn+4KhXCbaIutK5yMiDVe34p8Fm57bHUdCNtqk=";
    name = "bcm63xx_smp-sha256sums";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bcm63xx/smp/sha256sums";
  };
  imagebuilder = {
    sha256 = "c42615154459e979164555ec6a2e97b4414fb1df0c285fe237df0a2a24e59aae";
    filename = "immortalwrt-imagebuilder-23.05.7-bcm63xx-smp.Linux-x86_64.tar.xz";
  };
  profiles.sourceInfo = {
    hash = "sha256-OeOXdJ7JyVBT9p/OUj4J+dOdZ9UEJJWzSyyU7vtC4m0=";
    name = "bcm63xx_smp-profiles.json";
    url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bcm63xx/smp/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_mips32";
    linux_kernel = {
      release = "1";
      vermagic = "339a9a7c43f11288e01c6980d2b6929b";
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
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
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
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
    ];
    kmods_target = "5.15.195-1-339a9a7c43f11288e01c6980d2b6929b";
    profiles = {
      actiontec_r1000h = {
        device_packages = [
          "kmod-usb2"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-brcm-wl"
          "nas"
          "wlc"
          "iwinfo"
        ];
      };
      adb_av4202n = {
        device_packages = [
          "kmod-usb2"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-b43"
          "wpad-basic-openssl"
          "iwinfo"
        ];
      };
      adb_pdg-a4101n-a-000-1a1-ae = {
        device_packages = [
          "kmod-usb2"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-b43"
          "wpad-basic-openssl"
          "iwinfo"
        ];
      };
      brcm_bcm963281tan = {
        device_packages = [ ];
      };
      brcm_bcm96328avng = {
        device_packages = [ ];
      };
      brcm_bcm96338gw = {
        device_packages = [ ];
      };
      brcm_bcm96358vw = {
        device_packages = [ ];
      };
      brcm_bcm96358vw2 = {
        device_packages = [ ];
      };
      brcm_bcm96368mvngr = {
        device_packages = [ ];
      };
      brcm_bcm96368mvwg = {
        device_packages = [ ];
      };
      bt_home-hub-2-a = {
        device_packages = [
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-usb2"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "iwinfo"
        ];
      };
      comtrend_ar-5315u = {
        device_packages = [
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-usb2"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "iwinfo"
        ];
      };
      comtrend_ar-5381u = {
        device_packages = [
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-usb2"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "iwinfo"
        ];
      };
      comtrend_ar-5387un = {
        device_packages = [
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-usb2"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "iwinfo"
        ];
      };
      comtrend_vg-8050 = {
        device_packages = [
          "nand-utils"
          "kmod-usb2"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      comtrend_vr-3025u = {
        device_packages = [
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-usb2"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "iwinfo"
        ];
      };
      comtrend_vr-3025un = {
        device_packages = [
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-usb2"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "iwinfo"
        ];
      };
      comtrend_vr-3026e = {
        device_packages = [
          "kmod-b43"
          "wpad-basic-openssl"
          "iwinfo"
        ];
      };
      comtrend_vr-3032u = {
        device_packages = [
          "nand-utils"
          "kmod-usb2"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      comtrend_wap-5813n = {
        device_packages = [
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-usb2"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "iwinfo"
        ];
      };
      d-link_dsl-274xb-f1 = {
        device_packages = [
          "kmod-ath9k"
          "wpad-basic-openssl"
          "iwinfo"
        ];
      };
      d-link_dsl-275xb-d1 = {
        device_packages = [
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-usb2"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "iwinfo"
        ];
      };
      huawei_echolife-hg553 = {
        device_packages = [
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-usb2"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "iwinfo"
        ];
      };
      huawei_echolife-hg556a-a = {
        device_packages = [
          "kmod-ath9k"
          "wpad-basic-openssl"
          "kmod-usb2"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "iwinfo"
        ];
      };
      huawei_echolife-hg556a-b = {
        device_packages = [
          "kmod-ath9k"
          "wpad-basic-openssl"
          "kmod-usb2"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "iwinfo"
        ];
      };
      huawei_echolife-hg556a-c = {
        device_packages = [
          "kmod-rt2800-pci"
          "wpad-basic-openssl"
          "kmod-usb2"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "iwinfo"
        ];
      };
      huawei_echolife-hg655b = {
        device_packages = [
          "kmod-rt2800-pci"
          "wpad-basic-openssl"
          "kmod-usb2"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "iwinfo"
        ];
      };
      huawei_hg253s-v2 = {
        device_packages = [
          "nand-utils"
          "kmod-usb2"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      innacomm_w3400v6 = {
        device_packages = [
          "kmod-b43"
          "wpad-basic-openssl"
          "iwinfo"
        ];
      };
      netgear_dgnd3700-v1 = {
        device_packages = [
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-usb2"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "iwinfo"
        ];
      };
      netgear_dgnd3700-v2 = {
        device_packages = [
          "nand-utils"
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-usb2"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "iwinfo"
        ];
      };
      netgear_dgnd3800b = {
        device_packages = [
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-usb2"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "iwinfo"
        ];
      };
      netgear_evg2000 = {
        device_packages = [
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-usb2"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "iwinfo"
        ];
      };
      nucom_r5010un-v2 = {
        device_packages = [
          "kmod-b43"
          "wpad-basic-openssl"
          "iwinfo"
        ];
      };
      observa_vh4032n = {
        device_packages = [
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-usb2"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "iwinfo"
        ];
      };
      pirelli_a226m-fwb = {
        device_packages = [
          "kmod-usb2"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      sagem_fast-2504n = {
        device_packages = [
          "kmod-b43"
          "wpad-basic-openssl"
          "iwinfo"
        ];
      };
      sagem_fast-2704-v2 = {
        device_packages = [
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-usb2"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "iwinfo"
        ];
      };
      sercomm_ad1018 = {
        device_packages = [
          "nand-utils"
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-usb2"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "iwinfo"
        ];
      };
      sercomm_ad1018-nor = {
        device_packages = [
          "kmod-b43"
          "wpad-basic-openssl"
          "kmod-usb2"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "iwinfo"
        ];
      };
      sercomm_h500-s-lowi = {
        device_packages = [
          "nand-utils"
          "kmod-usb2"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      sercomm_h500-s-vfes = {
        device_packages = [
          "nand-utils"
          "kmod-usb2"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      sfr_neufbox-6-sercomm-r0 = {
        device_packages = [
          "kmod-usb2"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      sky_sr102 = {
        device_packages = [
          "kmod-usb2"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
        ];
      };
      technicolor_tg582n = {
        device_packages = [
          "kmod-usb2"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-b43"
          "wpad-basic-openssl"
          "iwinfo"
        ];
      };
      technicolor_tg582n-telecom-italia = {
        device_packages = [
          "kmod-usb2"
          "kmod-usb-ohci"
          "kmod-usb-ledtrig-usbport"
          "kmod-b43"
          "wpad-basic-openssl"
          "iwinfo"
        ];
      };
    };
  };
  corePackages = {
    baseUrl = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bcm63xx/smp/packages/";
    sourceInfo = {
      hash = "sha256-alH4tU/qDFuPwOw9/AKQ69TL/697X5gucheQjehTAaU=";
      name = "bcm63xx_smp-Packages";
      url = "https://mirror.nju.edu.cn/immortalwrt/releases/23.05.7/targets/bcm63xx/smp/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_mips32";
  feeds = import ./../../../packages/mips_mips32.nix;
}
