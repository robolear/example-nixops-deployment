{ config, pkgs, lib, ... }:


let
  vpsadminos = builtins.fetchTarball https://github.com/vpsfreecz/vpsadminos/archive/staging.tar.gz;
in
{
  imports = [
    <nixpkgs/nixos/modules/virtualisation/container-config.nix>
    "${vpsadminos}/os/lib/nixos-container/vpsadminos.nix"
  ];
}
