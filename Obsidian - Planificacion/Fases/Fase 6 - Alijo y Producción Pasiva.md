# 🏠 Fase 6 — Alijo y producción pasiva
**Modelo:** Claude Sonnet 5.5  
**Estado:** ⬜ Pendiente  
**Depende de:** [[Fase 3 - Cofres y Artilugios]], [[Fase 5 - Fuerza Entrenamiento y Arma]]

---

## ✅ Checklist de completitud

- [ ] Alijo físico único por jugador en el spawn
- [ ] Artilugios en alijo generan dinero/seg
- [ ] Límite de slots mejorable con dinero
- [ ] Skin cosmética para el alijo
- [ ] Múltiples niveles de mejora del alijo
- [ ] Cambio visual del alijo al mejorarlo (Voxel Art)
- [ ] Inventario máx 200 artilugios total
- [ ] Artilugios en inventario no producen hasta colocarlos en alijo
- [ ] UI clara: artilugios en alijo, slots, dinero/seg
- [ ] Tick server-side para producción (anti-exploit)
- [ ] DataStore de persistencia del alijo
- [ ] Popup AFK al volver al juego (20%, máx 12h)

---

## 🤖 Prompt para Claude

```
Eres un desarrollador Luau experto en Roblox. Implementa el sistema de 
alijo completo. Estilo Voxel Art (bloques cúbicos, cambios visuales por nivel).

ALIJO:
- Cada jugador tiene su propio alijo físico en el spawn
- Almacena artilugios obtenidos de cofres
- Cada artilugio en el alijo genera X dinero/seg de forma pasiva
- Límite de slots ampliable mejorando el alijo con dinero
- Skin cosmética disponible para el alijo

MEJORAS DEL ALIJO:
- Múltiples niveles que aumentan capacidad de slots
- Coste en dinero escala progresivamente
- Cambio visual del alijo al mejorarlo (Voxel Art más elaborado)

INVENTARIO:
- Capacidad máxima global: 200 artilugios
- Artilugios en alijo producen dinero; los del inventario no hasta colocarlos
- UI clara con artilugios en alijo, slots disponibles y dinero/seg total

PRODUCCIÓN PASIVA:
- El dinero se genera cada segundo según artilugios colocados
- Sistema de tick server-side para evitar exploits
- Al volver de AFK: popup con dinero acumulado (20% producción, máx 12h)

Implementa ServerScript de producción, DataStore, UI de gestión y RemoteEvents.
```

---

## 📝 Resultado obtenido
*(Pega aquí la respuesta de Claude)*

---

## 🔍 Revisión
- [ ] Revisado y correcto
- [ ] Implementado en Roblox Studio

**Notas:**
