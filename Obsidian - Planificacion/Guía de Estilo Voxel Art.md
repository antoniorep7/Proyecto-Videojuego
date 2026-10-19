# 🎨 Guía de Estilo Voxel Art — Chest Raiders

> Esta guía debe incluirse como contexto en TODOS los prompts de Claude que impliquen diseño visual.

---

## ¿Qué es Voxel Art en el contexto de este juego?

El estilo visual es **100% Voxel Art**: todo el mundo, personajes, armas, artilugios y edificios están construidos con bloques cúbicos, dando un aspecto de **LEGO animado**. No hay texturas fotorrealistas. Todo usa colores planos y vibrantes.

---

## Reglas visuales obligatorias

### Personajes
- Cuerpo cúbico tipo "lego": cabeza grande cuadrada, torso rectangular, brazos y piernas de bloque
- Sin suavizado de bordes (no smooth shading), todo con caras planas
- Colores sólidos por zona del cuerpo (sin degradados)
- Animaciones simples pero expresivas: movimientos angulares, no fluidos

### Armas
- Completamente construidas con bloques cúbicos
- Cada nivel de mejora cambia la forma drásticamente (no solo el color)
- Nivel 1-3: armas simples (espada de bloque, hacha básica)
- Nivel 4-6: armas con más piezas, más elaboradas
- Nivel 7-10: armas épicas con detalles brillantes, partículas de bloques

### Mapa y entorno
- Terreno formado por bloques de distintos tamaños
- Sin curvas: todo son ángulos de 90°
- Cada zona del mapa tiene una **paleta de 3-4 colores** bien diferenciada
- Árboles, rocas y decoración: todo en bloques

### UI e interfaz
- Bordes cuadrados, sin bordes redondeados excesivos
- Tipografía bold y clara, estilo pixelado
- Iconos simples en estilo pixel/voxel
- Colores vibrantes con buen contraste

---

## Paleta de colores por zona de boss

| Boss | Zona | Color primario | Color secundario | Ambiente |
|------|------|----------------|------------------|----------|
| Boss 1 | Prado verde | #7BC67A | #F5E642 | Luminoso, amigable |
| Boss 2 | Desierto | #E8A830 | #C4611A | Cálido, arenoso |
| Boss 3 | Cueva | #7A6B8A | #4A3F5C | Oscuro, morado |
| Boss 4 | Nieve | #A8D8EA | #FFFFFF | Frío, azul claro |
| Boss 5 | Volcán | #E84040 | #FF6B00 | Rojo intenso, fuego |
| Boss 6 | Pantano | #4A7C59 | #2D5A3D | Verde oscuro, tóxico |
| Boss 7 | Abismo | #1A1A2E | #6C63FF | Negro/morado, misterioso |
| Boss 8 | Tormenta | #2C3E6B | #00B4D8 | Azul eléctrico |
| Boss 9 | Ruinas | #8B6914 | #3D2B1F | Dorado oxidado |
| Boss 10 | Vacío | #0D0D0D | #FF0080 | Negro con neón rosa |

---

## Cómo incluir esta guía en los prompts

Al usar cada prompt de fase, añade al inicio:

> *"El estilo visual es Voxel Art tipo LEGO: bloques cúbicos, colores planos y vibrantes, sin texturas fotorrealistas, personajes de bloque, animaciones angulares. Consulta la Guía de Estilo para paletas por zona."*

