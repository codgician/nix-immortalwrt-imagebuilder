# 24.10.3 ath79/tiny
{
  baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/ath79/tiny/";
  sha256sums = {
    hash = "sha256-O/523GUlspD3LRhZrpIRuUXvawgaQEF0ehlX22FP6UI=";
    name = "ath79_tiny-sha256sums";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/ath79/tiny/sha256sums";
  };
  imagebuilder = {
    sha256 = "e80ffb20e9d846a5a549715110e86895a167ee24f3518ecda9aefbdc12e7384a";
    filename = "immortalwrt-imagebuilder-24.10.3-ath79-tiny.Linux-x86_64.tar.zst";
  };
  profiles.sourceInfo = {
    hash = "sha256-5LkaZOL4oMWT82wffDpI/3v5tNt0ofSsSp7RsBVJIIA=";
    name = "ath79_tiny-profiles.json";
    url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/ath79/tiny/profiles.json";
  };
  profiles.extract = {
    arch_packages = "mips_24kc";
    linux_kernel = {
      release = "1";
      vermagic = "aafa570f44238fd7c8465edac3b46a4c";
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
    kmods_target = "6.6.104-1-aafa570f44238fd7c8465edac3b46a4c";
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
  kmods."6.6.104-1-aafa570f44238fd7c8465edac3b46a4c" = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/ath79/tiny/kmods/6.6.104-1-aafa570f44238fd7c8465edac3b46a4c/";
    sourceInfo = {
      hash = "sha256-XZOjq9a7ujRviHbfUk7EGyn1t3b7OvY+ioicNbkUN+Y=";
      name = "kmods-ath79_tiny-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/ath79/tiny/kmods/6.6.104-1-aafa570f44238fd7c8465edac3b46a4c/Packages";
    };
    packages =
      let
        p = ./kmods.nix;
      in
      if builtins.pathExists p then import p else null;
  };
  corePackages = {
    baseUrl = "https://downloads.immortalwrt.org/releases/24.10.3/targets/ath79/tiny/packages/";
    sourceInfo = {
      hash = "sha256-woWdxFh0ZDpYoBePXYkYTosK2BsIHrlGNSzPQLaMeuI=";
      name = "ath79_tiny-Packages";
      url = "https://downloads.immortalwrt.org/releases/24.10.3/targets/ath79/tiny/packages/Packages";
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
