#!/bin/bash
# Removemos as antigas versões corrompidas dos arquivos velhos em faccoes que sobraram da tentativa da versao passada do agente

# No commit da iteracao passada (q eu fui penalizado), o agente criou versoes extras com nomes como A-Falange-de-Raiz-e-Aço (com "e" minusculo) vs A-Falange-de-Raiz-E-Aço (com "e" maiusculo)
# Vamos deletar os velhos arquivos "sujos" com nomes quebrados se existirem
rm -f "faccoes/A-Falange-de-Raiz-E-Aço.md"
rm -f "faccoes/O Sindicato-das-Lâminas-Negras.md"
rm -f "faccoes/Guilda-dos-Ossos-Falantes.md"
