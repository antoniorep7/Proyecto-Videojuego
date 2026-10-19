# 💪 Fase 5 — Fuerza, entrenamiento y arma
**Modelo:** Claude Opus 5.5  
**Estado:** ⬜ Pendiente  
**Depende de:** [[Fase 1 - Arquitectura]], [[Fase 4 - Combate y Bosses]]

---

## ✅ Checklist de completitud

- [ ] Zona de entrenamiento física en el mapa
- [ ] Animación de flexiones al entrar en la zona
- [ ] Generación de fuerza progresiva en zona
- [ ] Zona de entrenamiento mejorable con dinero
- [ ] Skin cosmética para zona de entrenamiento
- [ ] Fórmula: Fuerza Total = Fuerza Entrenada + (Fuerza Entrenada × Multiplicador Arma)
- [ ] Sistema de arma con ~10 niveles de mejora
- [ ] Nivel 1-5: esquirlas básicas; Nivel 6-10: esquirlas avanzadas
- [ ] Coste exponencial de mejora
- [ ] Animación de evolución del arma
- [ ] Arma cambia visualmente en cada nivel (Voxel Art)
- [ ] Skin de arma por completar índice
- [ ] AFK: fuerza offline al 20%
- [ ] AFK: dinero offline al 20%
- [ ] Límite AFK: 12 horas
- [ ] Popup al volver con lo acumulado offline

---

## 🤖 Prompt para Claude

```
Eres un desarrollador Luau experto en Roblox. Implementa el sistema de 
progresión de fuerza completo. Estilo visual Voxel Art (bloques cúbicos, 
colores planos, animaciones angulares tipo LEGO).

ZONA DE ENTRENAMIENTO:
- Zona física en el mapa, una por jugador
- Al entrar, el personaje hace flexiones (animación Voxel cúbica)
- Genera fuerza base progresivamente mientras está en la zona
- Mejorable con dinero para aumentar velocidad/cantidad de fuerza ganada
- Skins cosméticas para la zona de entrenamiento

FÓRMULA DE FUERZA:
- Fuerza Total = Fuerza Entrenada + (Fuerza Entrenada × Multiplicador del Arma)

SISTEMA DE ARMA:
- Un sola arma por jugador que evoluciona
- ~10 niveles de mejora (1 aprox. por boss)
- Mejoras 1-5: esquirlas básicas; Mejoras 6-10: esquirlas avanzadas
- Coste escala exponencialmente
- Al mejorar: animación de evolución mostrando nuevo aspecto
- El arma cambia visualmente en cada nivel (estilo Voxel Art más elaborado)
- Skins de arma desbloqueables completando apartados del índice

AFK:
- Si el jugador está en zona de entrenamiento al salir: sigue generando 
  fuerza offline al 20% de la tasa normal
- Dinero de artilugios se acumula offline al 20%
- Límite de acumulación: 12 horas
- Al volver: popup mostrando lo acumulado para recoger

Implementa ModuleScripts de cálculo, DataStore para persistencia y 
RemoteEvents necesarios.
```

---

## 📝 Resultado obtenido
*(Pega aquí la respuesta de Claude)*

---

## 🔍 Revisión
- [ ] Revisado y correcto
- [ ] Implementado en Roblox Studio

**Notas:**
