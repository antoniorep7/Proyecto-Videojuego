# 📐 Fase 1 — Arquitectura y estructura del proyecto
**Modelo:** Claude Opus 5.5  
**Estado:** ⬜ Pendiente  
**Prioridad:** 🔴 Alta — hacer primero

---

## ¿Por qué Opus 5.5?
Requiere razonamiento profundo sobre sistemas interdependientes complejos. La arquitectura mal diseñada aquí rompe todo lo demás.

---

## ✅ Checklist de completitud

- [ ] Estructura de carpetas en Roblox Studio definida
- [ ] ServerScriptService organizado
- [ ] ReplicatedStorage con módulos compartidos
- [ ] StarterPlayerScripts listo
- [ ] StarterGui estructurado
- [ ] Workspace con mapa base
- [ ] Todos los RemoteEvents identificados
- [ ] Todos los RemoteFunction identificados
- [ ] ModuleScripts principales listados
- [ ] Diagrama de comunicación cliente-servidor

---

## 🤖 Prompt para Claude

```
Eres un desarrollador experto en Roblox Studio y Luau. Necesito que diseñes 
la arquitectura completa de un juego de Roblox con las siguientes 
características generales:

CONCEPTO: Juego tipo simulator/grinder en Voxel Art donde los jugadores 
roban cofres custodiados por bosses, obtienen artilugios que generan dinero 
pasivo, entrenan fuerza y mejoran su arma progresivamente.

Diseña la estructura de carpetas y módulos del proyecto en Roblox Studio, 
incluyendo:
- ServerScriptService (scripts de servidor)
- ReplicatedStorage (módulos compartidos)
- StarterPlayerScripts (scripts de cliente)
- StarterGui (interfaces)
- Workspace (estructura del mapa)

Los sistemas principales que deben estar arquitecturados son:
1. Sistema de cofres y artilugios
2. Sistema de combate contra bosses
3. Sistema de fuerza y entrenamiento
4. Sistema de mejora de arma con esquirlas
5. Sistema de alijo y producción pasiva de dinero
6. Sistema de ciclo día/frenesí (5 min día + 10 seg frenesí)
7. Sistema AFK (dinero + fuerza offline al 20%)
8. Sistema de micropagos y skins
9. Sistema de leaderboards (fuerza y dinero/seg)
10. Sistema de índice de boss/cofres

Especifica qué es RemoteEvent, RemoteFunction o ModuleScript para cada 
componente y cómo se comunican entre sí. Dame el esquema completo antes de 
escribir ningún código.
```

---

## 📝 Resultado obtenido
*(Pega aquí la respuesta de Claude)*

---

## 🔍 Revisión
- [ ] Revisado y correcto
- [ ] Aplicado en Roblox Studio

**Notas:**
