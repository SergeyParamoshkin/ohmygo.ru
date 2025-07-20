---
title: "Hello World"
weight: 1
---

# Задача: Hello World

## Описание
Создайте программу, которая выводит "Hello, World!" в консоль.

## Требования
- Программа должна быть в пакете `main`
- Использовать функцию `main()` как точку входа
- Вывести текст "Hello, World!" с помощью `fmt.Println`

## Решение

```go
package main

import "fmt"

func main() {
    fmt.Println("Hello, World!")
}
```

## Объяснение
- `package main` - объявляет пакет main, необходимый для исполняемых программ
- `import "fmt"` - импортирует пакет fmt для функций ввода/вывода
- `func main()` - главная функция, точка входа в программу
- `fmt.Println()` - выводит строку в консоль с переводом строки

## Запуск
```bash
go run main.go
```