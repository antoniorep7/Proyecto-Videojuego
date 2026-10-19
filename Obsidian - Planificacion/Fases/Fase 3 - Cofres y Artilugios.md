# 📦 Fase 3 — Sistema de cofres y artilugios
**Modelo:** Claude Opus 5.5  
**Estado:** ⬜ Pendiente  
**Depende de:** [[Fase 1 - Arquitectura]]

---

## ✅ Checklist de completitud

- [ ] 10 bosses × 4 cofres activos cada uno
- [ ] Índice de 8 artilugios por boss con probabilidades
- [ ] Sistema de rareza de cofres funcionando
- [ ] Reclamación de cofre (1 jugador) implementada
- [ ] PvP de disputa de cofre (probabilidad por fuerza)
- [ ] Cofre llega al alijo y es intocable
- [ ] UI lateral de cofres con desplegable
- [ ] Timer de apertura según rareza
- [ ] Botón ABRIR + animación de revelación
- [ ] Artilugios generan dinero/seg en el alijo
- [ ] Límite de alijo según nivel
- [ ] Inventario máx 200 artilugios
- [ ] Ciclo Frenesí: cofres nuevos + +5% apertura
- [ ] Pequeña probabilidad de esquirlas en cofre especial

---

## 🤖 Prompt para Claude

```
Eres un desarrollador Luau experto en Roblox. Implementa el sistema completo 
de cofres y artilugios:

COFRES:
- Cada uno de los 10 bosses custodia 4 cofres simultáneos
- Cada boss tiene asignado un índice de 8 artilugios posibles
- Cada cofre tiene rareza con probabilidad menor cuanto mejor sea la recompensa
- El cofre físico es reclamable por un solo jugador
- Si dos jugadores reclaman el mismo cofre: combate PvP por probabilidad 
  ponderada según fuerza relativa
- El ganador lleva el cofre al alijo; una vez allí es intocable

APERTURA (UI):
- Botón lateral derecho "COFRES" con desplegable
- Cada cofre en cola muestra rareza y tiempo restante
- Tiempo de apertura varía según rareza
- Al terminar: botón "ABRIR" → animación revelando el artilugio

ARTILUGIOS:
- Cada artilugio genera X dinero/seg en el alijo
- Alijo con límite de capacidad según nivel de alijo
- Inventario máximo del jugador: 200 artilugios
- Se pueden tener varios iguales, cada uno cuenta por separado
- Pequeña probabilidad de esquirlas al abrir cofre muy especial

CICLO:
- 5 min de día activo
- 10 seg de "Frenesí y Caos": bosses se resetean, cofres nuevos, 
  cofres en apertura avanzan 5% de su tiempo total

Implementa: ModuleScript de configuración del índice, ServerScript de 
gestión, RemoteEvents y LocalScript de UI.
```

---

## 📝 Resultado obtenido
*(Pega aquí la respuesta de Claude)*

---

## 🔍 Revisión
- [ ] Revisado y correcto
- [ ] Implementado en Roblox Studio

**Notas:**
