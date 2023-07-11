### Installing the KWasm.sh operator

The easyest way to install KWasm-operator is via helm. Since Helm is already installed, we can directly start adding the repository and installing the operator:

```
helm repo add kwasm http://kwasm.sh/kwasm-operator/
helm upgrade --install -n kwasm --create-namespace kwasm-operator kwasm/kwasm-operator --set kwasmOperator.autoProvision="true"
```{{exec}}

The operator is looking for the `kwasm.sh/kwasm-node=true`{{}} label on Kubernetes nodes. It only provisions nodes with that label set. By setting `kwasmOperator.autoProvision="true"`{{}} value we change that behaviour to provision all available nodes.