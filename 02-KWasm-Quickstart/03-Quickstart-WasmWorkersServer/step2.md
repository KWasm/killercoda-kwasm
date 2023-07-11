Now that the cluster can run wasm images, it is time to start our Wasm Workers Server image. In this minimal example we create a `RuntimeClass`{{}} and a `Deployment`{{}} as follows (just click the yaml):

```
kubectl apply -f - <<EOF
apiVersion: node.k8s.io/v1
kind: RuntimeClass
metadata:
  name: wws
handler: wws
---
apiVersion: apps/v1
kind: Deployment
metadata:
  name: wasm-wws
spec:
  replicas: 1
  selector:
    matchLabels:
      app: wasm-wws
  template:
    metadata:
      labels:
        app: wasm-wws
    spec:
      runtimeClassName: wws
      containers:
        - name: wws-hello
          image: ghcr.io/deislabs/containerd-wasm-shims/examples/wws-js-hello:v0.7.0
          command: ["/"]
EOF
```{{exec}}

Port forward: 

- Wait for the pod to get ready `kubectl wait pods -l app=wasm-wws --for condition=Ready && sleep 5`{{exec}}
- Forward port 3000 of the pod `kubectl port-forward --address=0.0.0.0 deployment/wasm-wws 8080:3000`{{exec}}

That's it! You can use the following link to see the result:
[Click here to visit forwarded pod on path /hello]({{TRAFFIC_HOST1_8080}}/hello)