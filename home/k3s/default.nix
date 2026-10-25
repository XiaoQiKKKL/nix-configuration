{ pkgs, ... }:
{
  home.packages = with pkgs; [
    kubectl
    kubernetes-helm
    k9s
    cilium-cli
  ];
  home.sessionVariables = {
    KUBECONFIG = "/home/xiaoqi/.kube/config";
  };
}
