helm repo add kwasm http://kwasm.sh/kwasm-operator/
helm upgrade --install -n kwasm --create-namespace kwasm-operator kwasm/kwasm-operator --set kwasmOperator.autoProvision="true"
