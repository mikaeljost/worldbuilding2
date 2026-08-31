import os
import glob
import re

def process(filepath, destpath):
    with open(filepath, 'r', encoding='utf-8') as f:
        text = f.read()

    # O texto original dos txt do word muitas vezes veio formatado dessa forma quebrada, vamos melhorar as quebras
    text = re.sub(r"\s+\*\s\*\*", r"\n* **", text)
    text = re.sub(r"--- ###", "---\n\n###", text)
    text = re.sub(r"--- ##", "---\n\n##", text)

    # Corrige a formatação de "### 1. Nome", adicionando quebra antes
    text = re.sub(r"([^\n])\s*(###\s\d+\.)", r"\1\n\n\2", text)

    # Corrige a tabela que ficou numa linha só
    text = re.sub(r"\|\s*([A-Za-z])", r"|\n\1", text)

    # 2. Adicionar SEGREDO com regex multi-line seguro
    def secret_replacer(match):
        return f"\n<!-- SEGREDO -->\n{match.group(1)}\n<!-- FIM SEGREDO -->\n"

    # Captura a linha inteira do gancho se ela contiver as palavras chave
    text = re.sub(r"^(.*?-\s\*\*(A Complicação|O Gancho|O Segredo)\*\*.*?(Draven|Ouro-Sangue|Abismo).*?)$", secret_replacer, text, flags=re.MULTILINE | re.IGNORECASE)

    # Limpar sujeira
    text = re.sub(r"```eof\s*\*\*\*.*?$", "", text, flags=re.DOTALL | re.IGNORECASE)
    text = text.replace("```", "")

    with open(destpath, 'w', encoding='utf-8') as f:
        f.write(text)

for f in glob.glob("faccoes/*.md"):
    if f != "faccoes/template.md":
        process(f, f)
