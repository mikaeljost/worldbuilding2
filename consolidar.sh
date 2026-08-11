#!/bin/bash

# Arquivo de saída
OUT="compilado.md"

echo "# Worldbuilding: Fantasia Medieval Dark Fantasy" > $OUT
echo "" >> $OUT

echo "## 1. Diretrizes de Estilo e Criação" >> $OUT
cat estilo/diretrizes.md >> $OUT
echo "" >> $OUT
echo "---" >> $OUT
echo "" >> $OUT

echo "## 2. A Magia e as Regras do Mundo" >> $OUT
cat lore/magia_e_os_3333.md >> $OUT
echo "" >> $OUT
echo "---" >> $OUT
echo "" >> $OUT

echo "## 3. O Enredo e a Política" >> $OUT
cat enredo/triangulo_politico.md >> $OUT
echo "" >> $OUT
cat enredo/a_horda_silenciosa.md >> $OUT
echo "" >> $OUT
echo "---" >> $OUT
echo "" >> $OUT

echo "## 4. Geografia" >> $OUT
cat lugares/geografia_expandida.md >> $OUT
echo "" >> $OUT
cat lugares/a_grande_fenda.md >> $OUT
echo "" >> $OUT
echo "---" >> $OUT
echo "" >> $OUT

echo "## 5. Personagens Principais" >> $OUT
cat personagens/perpetua_sohl.md >> $OUT
echo "" >> $OUT
cat personagens/irmao_sebo.md >> $OUT
echo "" >> $OUT
cat personagens/barao_corvin_aldeu.md >> $OUT
echo "" >> $OUT
cat personagens/kastel_draven.md >> $OUT
echo "" >> $OUT
echo "---" >> $OUT
echo "" >> $OUT

echo "## 6. Itens Mágicos" >> $OUT
cat itens/bussola_de_sangue_frio.md >> $OUT
echo "" >> $OUT
cat itens/giz_de_osso_de_martir.md >> $OUT
echo "" >> $OUT
echo "---" >> $OUT
echo "" >> $OUT

echo "## 7. Panteão e Religião" >> $OUT
cat lore/panteao_e_crencas.md >> $OUT
echo "" >> $OUT
echo "---" >> $OUT
echo "" >> $OUT

echo "## 8. Linha do Tempo e Passado" >> $OUT
cat linha-do-tempo/ascensao_de_draven.md >> $OUT
echo "" >> $OUT
