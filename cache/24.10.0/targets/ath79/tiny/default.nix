# 24.10.0 ath79/tiny
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ath79/tiny/";
  sha256sums = {
    hash = "sha256-wIgGgmrt2129XmRAo0wVnu8b2GoPuA3ywJ/fo4XP0dg=";
    name = "ath79_tiny-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ath79/tiny/sha256sums";
  };
  imagebuilder = {
    sha256 = "0166464b925cf1a26874984d66180a4f40a84958ac93f59ffb488208604246d6";
    filename = "immortalwrt-imagebuilder-24.10.0-ath79-tiny.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-6+/BRvIeNceAedQAZygHkhNFAJ04RZtpISfiDeRTa5o=";
    name = "ath79_tiny-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ath79/tiny/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "f72615a35b2631a11f1cae8037055909";
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
      "kmod-ath9k"
      "kmod-gpio-button-hotplug"
      "kmod-nf-nathelper"
      "kmod-nf-nathelper-extra"
      "kmod-nft-offload"
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
      "uboot-envtools"
      "uci"
      "uclient-fetch"
      "urandom-seed"
      "urngd"
      "wpad-basic-openssl"
    ];
    kmods_target = "6.6.73-1-f72615a35b2631a11f1cae8037055909";
    profiles = {
      dlink_dap-1720-a1 = {
        device_packages = [
          "-swconfig"
          "ath10k-firmware-qca988x-ct"
          "kmod-ath10k-ct-smallbuffers"
          "rssileds"
        ];
      };
      dlink_dir-859-a1 = {
        device_packages = [
          "ath10k-firmware-qca988x-ct"
          "kmod-ath10k-ct-smallbuffers"
        ];
      };
      dlink_dir-859-a3 = {
        device_packages = [
          "ath10k-firmware-qca988x-ct"
          "kmod-ath10k-ct-smallbuffers"
        ];
      };
      dlink_dir-869-a1 = {
        device_packages = [
          "ath10k-firmware-qca988x-ct"
          "kmod-ath10k-ct-smallbuffers"
        ];
      };
      nec_wg600hp = {
        device_packages = [
          "kmod-usb2"
          "-uboot-envtools"
        ];
      };
      nec_wr8750n = {
        device_packages = [
          "kmod-usb2"
          "-uboot-envtools"
        ];
      };
      nec_wr9500n = {
        device_packages = [
          "kmod-usb2"
          "-uboot-envtools"
        ];
      };
    };
  };
  kmods."6.6.73-1-f72615a35b2631a11f1cae8037055909" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ath79/tiny/kmods/6.6.73-1-f72615a35b2631a11f1cae8037055909/";
    sourceInfo = {
      hash = "sha256-zH7zB6XKbQnOk54ZcxShB6njC374WqiIOPBwNIsZntY=";
      name = "kmods-ath79_tiny-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ath79/tiny/kmods/6.6.73-1-f72615a35b2631a11f1cae8037055909/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ath79/tiny/packages/";
    sourceInfo = {
      hash = "sha256-BU3QlNZWj2lEAEopueUHtHuSzEEeo+qweNE1iHzmOwI=";
      name = "ath79_tiny-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.0/targets/ath79/tiny/packages/Packages";
    };
    packages =
      let
        p = ./packages.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  packagesArch = "mips_24kc";
  feeds = import ./../../../packages/mips_24kc.nix;
}
