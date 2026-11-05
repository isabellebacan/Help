# Especificação — seleção do tipo de cadastro

## Captura

Referência: print anexo da tela de seleção do tipo de cadastro. O texto “Seleção p/ Cadastro” visível fora do painel branco é o nome do quadro no Figma e não faz parte da tela.

## Elementos

Posições e dimensões aproximadas, em pixels, tomando o canto superior esquerdo do print (272 × 586 px) como origem:

1. Fundo cinza-claro ocupando toda a tela, aproximadamente 272 × 586 px, cor aproximada `#E5E5E5`.
2. Painel branco com cantos arredondados, de aproximadamente (22, 49) a (268, 582), cor `#FFFFFF`.
3. Logotipo HELP: imagem `assets/images/logo_help.png` (logotipo laranja com uma chave inglesa entre as letras), centralizada horizontalmente no painel, na mesma posição da marca "HELP" do Figma, aproximadamente (112, 134). O logotipo visível ocupa 67 × 30 px. A imagem tem margem branca ao redor do logotipo, então o arquivo inteiro deve ter cerca de 165 px de largura em tela de 390 px para o logotipo visível ficar do tamanho do Figma. Não é texto e não é tocável.
4. Botão “Profissional”, aproximadamente (58, 248), 175 × 46 px, fundo laranja aproximado `#E65B0B`, texto branco de aproximadamente 10 px e sombra cinza.
5. Texto “Ou”, centralizado abaixo do primeiro botão, aproximadamente (138, 312), aproximadamente 10 px, cor laranja aproximada `#E65B0B`.
6. Botão “Cliente”, aproximadamente (58, 336), 175 × 45 px, fundo laranja aproximado `#E65B0B`, texto branco de aproximadamente 10 px e sombra cinza.
7. Texto “Já possui cadastro?”, centralizado abaixo do segundo botão, aproximadamente (97, 430), aproximadamente 10 px, cor laranja aproximada `#E65B0B`.
8. Botão contornado “Entrar”, aproximadamente (40, 449), 210 × 25 px, fundo branco, contorno laranja aproximado `#E65B0B`, cantos arredondados e sombra cinza; texto laranja de aproximadamente 9 px.
9. Texto de concordância, centralizado abaixo do botão, aproximadamente (67, 486), aproximadamente 8 px, cor cinza-azulada aproximada `#858D95`.
10. Link “Termos de uso”, aproximadamente (75, 500), aproximadamente 8 px, cor laranja aproximada `#E65B0B`.
11. Separador “ou”, aproximadamente (132, 500), aproximadamente 8 px, cor cinza-azulada aproximada `#858D95`.
12. Link “Política e Privacidade”, aproximadamente (145, 500), aproximadamente 8 px, cor laranja aproximada `#E65B0B`.

## Dados

Textos visíveis, preservando letras, acentos e pontuação:

- Botão: `Profissional`
- Texto: `Ou`
- Botão: `Cliente`
- Texto: `Já possui cadastro?`
- Botão: `Entrar`
- Texto: `Ao continuar, você concorda com os nossos`
- Link: `Termos de uso`
- Separador: `ou`
- Link: `Política e Privacidade`

## Critérios de aceitação

- Ao tocar em “Profissional”, abre uma tela provisória com apenas o texto “Cadastro de profissional”.
- Ao tocar em “Cliente”, abre uma tela provisória com apenas o texto “Cadastro de cliente”.
- Ao tocar em “Entrar”, abre uma tela provisória com apenas o texto “Entrar”.
- Ao tocar em “Termos de uso”, abre uma tela provisória com apenas o texto “Termos de uso”.
- Ao tocar em “Política e Privacidade”, abre uma tela provisória com apenas o texto “Política e Privacidade”.

Cada tela provisória contém somente o texto indicado no respectivo critério. Não há outros elementos nem textos nessas telas.
