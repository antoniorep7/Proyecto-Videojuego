# 🧮 Fase 9 — Balanceo y economía del juego
**Modelo:** Claude Opus 5.5  
**Estado:** ⬜ Pendiente  
**Depende de:** Todas las fases anteriores

---

## ✅ Checklist de completitud

- [ ] Fuerza y HP de cada boss (1-10)
- [ ] Fuerza recomendada por zona y por cofre
- [ ] Producción de dinero/seg por artilugio (boss × rareza)
- [ ] Coste de mejoras del alijo (todos los niveles)
- [ ] Coste de mejoras de zona de entrenamiento
- [ ] Fuerza ganada/seg por nivel de entrenamiento
- [ ] Esquirlas necesarias por mejora de arma
- [ ] Multiplicador de fuerza por nivel de arma
- [ ] Probabilidades de cofre por boss
- [ ] Tiempo de apertura por rareza de cofre
- [ ] Curva de progresión validada (fácil → grindeo → noches AFK)

---

## 🤖 Prompt para Claude

```
Eres un game designer experto en juegos de Roblox tipo grinder/simulator. 
Diseña el balanceo completo del juego:

FILOSOFÍA DE PROGRESIÓN:
- Fácil y satisfactorio al principio (30-60 min muy accesibles)
- Grindeo moderado en zonas medias (boss 4-6)
- Grindeo intenso y noches AFK necesarias para zonas avanzadas (boss 7-10)
- La mejora del arma debe ser un hito épico e importante

CALCULA Y ESPECIFICA EN TABLAS:
1. Fuerza y HP de cada boss (1-10)
2. Fuerza recomendada por zona general y por cofre concreto
3. Producción de dinero/seg de cada artilugio (por boss y por rareza)
4. Coste de mejoras del alijo (todos los niveles y precios)
5. Coste de mejoras de zona de entrenamiento (todos los niveles)
6. Ganancia de fuerza/seg en zona de entrenamiento (por nivel de mejora)
7. Esquirlas necesarias para cada mejora de arma (básicas para 1-5, 
   avanzadas para 6-10), con coste exponencial
8. Multiplicador de fuerza de cada nivel de arma (1-10)
9. Probabilidades de aparición de cada cofre por boss
10. Tiempo de apertura de cofre por rareza

Presenta TODO en tablas claras y justifica las curvas de progresión elegidas.
```

---

## 📝 Resultado obtenido
*(Pega aquí la respuesta de Claude)*

---

## 🔍 Revisión
- [ ] Revisado y correcto
- [ ] Valores implementados en los scripts

**Notas:**
