#!/bin/bash

OUT="compilado.md"

echo "# Worldbuilding: Fantasia Medieval Dark Fantasy" > $OUT
echo "" >> $OUT
echo "> Documento Oficial de Lore, Regras, Geografia e NPCs" >> $OUT
echo "" >> $OUT
echo "<br><br>" >> $OUT

echo "# 1. Diretrizes de Estilo e Criação" >> $OUT
cat estilo/diretrizes.md >> $OUT
echo "" >> $OUT
echo "<div style='page-break-after: always;'></div>" >> $OUT
echo "" >> $OUT

echo "# 2. A Magia e as Regras do Mundo" >> $OUT
cat lore/magia_e_os_3333.md >> $OUT
echo "" >> $OUT
echo "<div style='page-break-after: always;'></div>" >> $OUT
echo "" >> $OUT

echo "# 3. O Enredo e a Política" >> $OUT
cat enredo/triangulo_politico.md >> $OUT
echo "" >> $OUT
echo "---" >> $OUT
echo "" >> $OUT
cat enredo/a_horda_silenciosa.md >> $OUT
echo "" >> $OUT
echo "<div style='page-break-after: always;'></div>" >> $OUT
echo "" >> $OUT

echo "# 4. Geografia do Mundo" >> $OUT
cat lugares/geografia_expandida.md >> $OUT
echo "" >> $OUT
echo "---" >> $OUT
echo "" >> $OUT
cat lugares/a_grande_fenda.md >> $OUT
echo "" >> $OUT
echo "---" >> $OUT
echo "" >> $OUT
echo "## 4.1 Cidades e Lugares de Destaque" >> $OUT
cat lugares/Aethelgard.md >> $OUT
echo "" >> $OUT
echo "---" >> $OUT
cat lugares/Bastion.md >> $OUT
echo "" >> $OUT
echo "---" >> $OUT
cat lugares/Gristal.md >> $OUT
echo "" >> $OUT
echo "---" >> $OUT
cat lugares/Krag-Mora.md >> $OUT
echo "" >> $OUT
echo "---" >> $OUT
cat lugares/Libertaris.md >> $OUT
echo "" >> $OUT
echo "---" >> $OUT
cat lugares/Malaxis.md >> $OUT
echo "" >> $OUT
echo "---" >> $OUT
cat lugares/Tartuga.md >> $OUT
echo "" >> $OUT
echo "---" >> $OUT
cat lugares/Treehold.md >> $OUT
echo "" >> $OUT
echo "---" >> $OUT
cat lugares/Zul-Bazar.md >> $OUT
echo "" >> $OUT
echo "---" >> $OUT
cat lugares/Centro_Sudoeste.md >> $OUT
echo "" >> $OUT
echo "---" >> $OUT
cat lugares/Noroeste.md >> $OUT
echo "" >> $OUT
echo "---" >> $OUT
cat lugares/Noroeste_Leste.md >> $OUT
echo "" >> $OUT
echo "---" >> $OUT
cat lugares/Sudeste.md >> $OUT
echo "" >> $OUT
echo "<div style='page-break-after: always;'></div>" >> $OUT
echo "" >> $OUT

echo "# 5. Personagens Principais e NPCs" >> $OUT
cat personagens/perpetua_sohl.md >> $OUT
echo "" >> $OUT
echo "---" >> $OUT
cat personagens/irmao_sebo.md >> $OUT
echo "" >> $OUT
echo "---" >> $OUT
cat personagens/barao_corvin_aldeu.md >> $OUT
echo "" >> $OUT
echo "---" >> $OUT
cat personagens/kastel_draven.md >> $OUT
echo "" >> $OUT
echo "<div style='page-break-after: always;'></div>" >> $OUT
echo "" >> $OUT

echo "# 6. Itens Mágicos" >> $OUT
cat itens/bussola_de_sangue_frio.md >> $OUT
echo "" >> $OUT
echo "---" >> $OUT
cat itens/giz_de_osso_de_martir.md >> $OUT
echo "" >> $OUT
echo "<div style='page-break-after: always;'></div>" >> $OUT
echo "" >> $OUT

echo "# 7. Religião e o Panteão" >> $OUT
cat lore/panteao_e_crencas.md >> $OUT
echo "" >> $OUT
echo "<div style='page-break-after: always;'></div>" >> $OUT
echo "" >> $OUT

echo "# 8. Linha do Tempo e o Passado de Draven" >> $OUT
cat linha-do-tempo/ascensao_de_draven.md >> $OUT
echo "" >> $OUT
echo "<div style='page-break-after: always;'></div>" >> $OUT
echo "" >> $OUT

echo "# 9. Mitos da Engenharia Divina" >> $OUT
cat lore/engenharia_divina_e_mitos.md >> $OUT
echo "" >> $OUT

echo "<div style='page-break-after: always;'></div>" >> $OUT
echo "" >> $OUT

echo "# 10. Facções e Sociedades Secretas" >> $OUT
for file in faccoes/*.md; do
    if [ "$file" != "faccoes/template.md" ] && [ "$file" != "faccoes/faccao1.md" ] && [ "$file" != "faccoes/O-Circulo-De-Giz.md" ] && [ "$file" != "faccoes/A-Horda-Silenciosa.md" ] && [ "$file" != "faccoes/O-Sindicato-Do-Ferro-Frio.md" ] && [ "$file" != "faccoes/Os-Patrulheiros-do-Dossel-Verde.md" ]; then
        cat "$file" >> $OUT
        echo "" >> $OUT
        echo "---" >> $OUT
        echo "" >> $OUT
    fi
done

echo "<div style='page-break-after: always;'></div>" >> $OUT
echo "" >> $OUT

echo "# 11. Anexo: Glossário do Mundo" >> $OUT
cat GLOSSÁRIO.md >> $OUT
echo "" >> $OUT
