# EriLab Bottomless Bag

Expande a bag de Pokémon Red, Blue e Yellow de 20 para 255 tipos diferentes
de item no Gen1Recomp.

[Baixar a versão mais recente](https://github.com/erereck/gen1recomp-bottomless-bag/releases/latest)

## O que muda

- Aumenta a capacidade de 20 para 255 tipos diferentes de item.
- Mantém o limite normal de 99 unidades por item.
- Usa a rolagem já existente no menu da bag.
- Não entrega itens e não altera arquivos do jogo.
- Usa apenas a API pública `constants.bagSize`; não requer
  `engine_internals`.

## Requisitos

- Gen1Recomp **v0.1.50 ou mais recente**.
- Mod API 2.

A v0.1.50 inclui a correção que faz a bag respeitar `constants.bagSize`.
Versões anteriores ignoram essa configuração.

## Instalação

Importe `erilab_bottomless_bag.zip` pelo menu de Mods do Gen1Recomp e
ative-o antes de carregar o save.

O mod pode ser usado junto com **EriLab Bag Wrap**.

## Saves

O formato nativo `save.lua` preserva todos os itens mesmo se o mod for
desativado. Nesse caso, novos tipos de item ficam bloqueados até a bag voltar
ao limite ativo, mas nenhum item existente é apagado.

Exportações para o formato de cartucho `.sav` continuam limitadas aos
primeiros 20 slots pela estrutura original do Game Boy. Faça um backup antes
de exportar um save com mais de 20 tipos de item.

## Comunidade

O projeto indica o [Discord oficial](https://bois.icu) para suporte,
anúncios e mods.
