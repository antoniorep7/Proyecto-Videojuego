# 💎 Fase 7 — Monetización, skins y leaderboards
**Modelo:** Claude Sonnet 5.5  
**Estado:** ⬜ Pendiente  
**Depende de:** [[Fase 1 - Arquitectura]]

---

## ✅ Checklist de completitud

**Micropagos:**
- [ ] 2x Dinero boost temporal (1h)
- [ ] 2x Fuerza boost temporal (1h)
- [ ] 50% reducción tiempo apertura cofres (1h)
- [ ] Pack de inicio (boost + skin exclusiva)
- [ ] Pase VIP permanente (+10% producción + zona VIP)
- [ ] Cofre Premium con Robux (artilugios exclusivos)

**Skins:**
- [ ] Skins de alijo (Robux + eventos)
- [ ] Skins de zona de entrenamiento (Robux + eventos)
- [ ] Skins de arma por completar índice (gratis por logros)

**Leaderboards:**
- [ ] Top 100 por Fuerza Total
- [ ] Top 100 por Dinero por Segundo
- [ ] Paneles físicos en el spawn
- [ ] Actualización cada 60 segundos

**Índice:**
- [ ] Panel UI con todos los bosses y cofres
- [ ] Probabilidades de artilugios visibles
- [ ] Progreso del jugador rastreado
- [ ] Completar secciones desbloquea skins de arma

---

## 🤖 Prompt para Claude

```
Eres un desarrollador Luau experto en Roblox con experiencia en monetización. 
Implementa el sistema completo de monetización y extras:

MICROPAGOS (Robux) — productos de alta conversión en simulators:
- 2x Dinero boost (temporal, 1 hora)
- 2x Fuerza boost (temporal, 1 hora)
- Reducción 50% tiempo apertura de cofres (temporal, 1 hora)
- Pack de inicio: boost combinado + skin exclusiva a precio reducido
- Pase VIP permanente: +10% producción pasiva siempre + acceso a zona VIP 
  del spawn con estética especial en Voxel Art
- Cofre Premium: comprable con Robux con artilugios exclusivos de alta 
  producción (ventaja pero no pay-to-win extremo)

SKINS (cosméticas, sin ventaja de gameplay):
- Skins de alijo: con Robux o eventos
- Skins de zona de entrenamiento: con Robux o eventos
- Skins de arma: completando apartados del índice de boss/cofres (gratis)

LEADERBOARDS:
- Top 100 por Fuerza Total
- Top 100 por Dinero por Segundo
- Paneles físicos visibles en el spawn (estilo Voxel Art)
- Actualización cada 60 segundos

ÍNDICE:
- Panel/UI con todos los bosses y cofres asociados
- Qué artilugios da cada cofre con su probabilidad
- Progreso del jugador (cofres abiertos, bosses derrotados)
- Al completar secciones del índice: desbloquea skins de arma

Implementa usando MarketplaceService, DataStoreService y OrderedDataStore 
para leaderboards.
```

---

## 📝 Resultado obtenido
*(Pega aquí la respuesta de Claude)*

---

## 🔍 Revisión
- [ ] Revisado y correcto
- [ ] Implementado en Roblox Studio

**Notas:**
