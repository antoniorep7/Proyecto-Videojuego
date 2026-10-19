# ⚔️ Fase 4 — Sistema de combate y bosses
**Modelo:** Claude Sonnet 5.5  
**Estado:** ⬜ Pendiente  
**Depende de:** [[Fase 1 - Arquitectura]], [[Fase 3 - Cofres y Artilugios]]

---

## ✅ Checklist de completitud

- [ ] Bosses estáticos en su zona
- [ ] Combate se inicia al reclamar cofre custodiado
- [ ] Combate automático basado en fuerza
- [ ] Click del jugador da bonus menor de daño
- [ ] 10 bosses con stats escalados
- [ ] Cartel de fuerza recomendada por zona/cofre
- [ ] Al perder: respawn en base + cooldown 25s
- [ ] Sin pérdida de ítems al morir
- [ ] Esquirlas básicas de boss 1-5
- [ ] Esquirlas avanzadas de boss 6-10
- [ ] PvP de disputa de cofre resuelto por probabilidad

---

## 🤖 Prompt para Claude

```
Eres un desarrollador Luau experto en Roblox. Implementa el sistema de 
combate completo:

COMBATE CONTRA BOSS:
- Bosses estáticos en su zona del mapa (estilo Voxel Art cúbico)
- El combate se inicia al intentar reclamar un cofre custodiado
- Combate mayormente automático basado en fuerza del jugador
- El jugador puede hacer clic durante el combate para añadir un pequeño 
  bonus de daño (no decisivo, solo complementario)
- Cada boss tiene HP y fuerza requerida propios
- Bosses del 1 al 10 escalan progresivamente
- La rareza del cofre afecta también la dificultad del encuentro
- Cartel en cada zona muestra fuerza recomendada general y por cofre

AL PERDER:
- Respawn en base/spawn
- Cooldown 25 segundos antes de volver a intentarlo
- Sin pérdida de ítems ni recursos

DROPS DE ESQUIRLAS:
- Cada boss suelta esquirlas al ser derrotado
- Boss 1-5: esquirlas básicas
- Boss 6-10: esquirlas avanzadas (recurso diferente y más valioso)
- Cantidad escala con dificultad del boss

COMBATE PvP (disputa de cofre):
- Si dos jugadores reclaman el mismo cofre: combate automático instantáneo
- Probabilidad de victoria ponderada según fuerza relativa
- El perdedor no sufre penalización más allá de no obtener el cofre

Implementa ServerScript de combate, detección de colisiones con el cofre, 
RemoteEvents y feedback visual al jugador.
```

---

## 📝 Resultado obtenido
*(Pega aquí la respuesta de Claude)*

---

## 🔍 Revisión
- [ ] Revisado y correcto
- [ ] Implementado en Roblox Studio

**Notas:**
