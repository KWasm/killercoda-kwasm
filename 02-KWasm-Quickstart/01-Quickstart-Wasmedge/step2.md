```
echo '
apiVersion: node.k8s.io/v1
kind: RuntimeClass
metadata:
  name: crun
handler: crun' | kubectl apply -f -
```{{exec}}
```
echo '
apiVersion: batch/v1
kind: Job
metadata:
  creationTimestamp: null
  name: wasm-test
spec:
  template:
    metadata:
      annotations:
        module.wasm.image/variant: compat-smart
      creationTimestamp: null
    spec:
      containers:
      - image: wasmedge/example-wasi:latest
        name: wasm-test
        resources: {}
      restartPolicy: Never
      runtimeClassName: crun
  backoffLimit: 1' | kubectl apply -f -
```{{exec}}

Wait for Wasm container to complete:

- `kubectl wait --for=condition=complete job/wasm-test`{{exec}}
- `kubectl logs job/wasm-test`{{exec}}
