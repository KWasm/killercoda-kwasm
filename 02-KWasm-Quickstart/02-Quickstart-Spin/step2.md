```
echo '
apiVersion: node.k8s.io/v1                                           
kind: RuntimeClass
metadata:
  name: wasmtime-spin
handler: spin' | kubectl apply -f -

echo '
apiVersion: v1
kind: Pod
metadata:
  labels:
    app: wasm-spin
  name: wasm-spin
spec:
  containers:
  - command: ["/"]
    image: ghcr.io/deislabs/containerd-wasm-shims/examples/spin-rust-hello:latest
    name: spin-hello
  runtimeClassName: wasmtime-spin' | kubectl apply -f -
```{{exec}}

Port forward: 

- `kubectl wait pods -l app=wasm-spin --for condition=Ready`{{exec}}
- `kubectl port-forward wasm-spin --address 0.0.0.0 8080:80`{{exec}}

[Click here to visit forwarded pod]({{TRAFFIC_HOST1_8080}}/hello)