
yes | kubeadm reset
kubeadm join cloud001:6443 --token 5cd939.q0iau9hmmoycio7s \
	--discovery-token-ca-cert-hash sha256:9b671eaa6e1cf2bd4fcbcb6d1afbbaa62e32ac07883ce37125b1930afb28504f 

