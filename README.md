# Star Wars Characters - iOS App

![Swift](https://img.shields.io/badge/Swift-5.0-orange.svg)
![iOS](https://img.shields.io/badge/iOS-15%2B-blue.svg)
![Platform](https://img.shields.io/badge/Platform-iPhone-lightgrey.svg)

Aplicación iOS que muestra un listado completo de personajes de Star Wars con sus imágenes e información detallada, desarrollada en Swift.

## Características principales
- 📱 Interfaz nativa para iOS
- 🖼️ Visualización de personajes con imágenes
- 🔍 Función de búsqueda
- 📖 Vista detallada con toda la información

## Estructura de datos
La aplicación utiliza un archivo JSON local (`characters.json`) con la siguiente estructura por personaje:

```json
{
  "id": 1,
  "name": "Luke Skywalker",
  "image": "luke_image",
  "description": "Joven Jedi de Tatooine",
  "homeworld": "Tatooine",
  "species": "Humano",
  "affiliation": "Rebelión",
  "appearances": ["Episodio IV", "Episodio V", "Episodio VI"]
}
```
## Campos del JSON:

- id: Identificador único del personaje
- name: Nombre completo del personaje
- image: Nombre del recurso de imagen (sin extensión)
- description: Breve descripción del personaje
- homeworld: Planeta de origen
- species: Especie a la que pertenece
- affiliation: Afiliación principal (Imperio, Rebelión, etc.)
- appearances: Array de películas/series donde aparece

## Características de la App

- Listado de personajes con foto y nombre
- Vista detallada con toda la información
- Búsqueda/filtrado de personajes
- Diseño adaptable para iPhone y iPad
- Soporte para modo claro/oscuro
- Animaciones fluidas entre vistas

<img width="374" alt="Captura de pantalla 2025-06-28 a las 5 35 58 p m" src="https://github.com/user-attachments/assets/8746e48e-1706-4778-8109-1b522e7a081b" />


## Requisitos

- iOS 15+
- Xcode 13+
- Swift 5.0+

## Instalación

- Clona el repositorio
- Abre el proyecto en Xcode
- Compila y ejecuta en simulador o dispositivo físico
