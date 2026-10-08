.PHONY: build watch

update-date:
	sed -i "s/^\(\s*current_date:\s*\).*/\1'$$(date +%Y-%m-%d)'/" Glenn_Louedec_CV.yaml

build: update-date
	uv run rendercv render Glenn_Louedec_CV.yaml -pdf glenn_louedec.pdf

watch: update-date
	uv run rendercv render Glenn_Louedec_CV.yaml --watch

