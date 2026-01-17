{ pkgs }:
pkgs.writeShellApplication {
  name = "generate-latest-release";
  runtimeInputs = [
    pkgs.curl
    pkgs.jq
  ];

  text = ''
    curl -s https://immortalwrt.kyarucloud.moe/.versions.json | jq -c '.stable_version' > latest-release.nix
  '';
}
