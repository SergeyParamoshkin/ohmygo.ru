---
title: "Веб-разработка"
weight: 40
---

# Веб-разработка на Go

```golang
func main() {
    http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
        ctx := r.Context()
        select {
        case <-time.After(10 * time.Second):
            w.Write([]byte("Done"))
        case <-ctx.Done():
            log.Print("Canceled")
        }
    })
    server := &http.Server{Addr: ":8080"}
    go server.ListenAndServe()
    
    // Как добавить graceful shutdown с таймаутом 5 секунд?
    // Куда вставить обработку сигналов?
}
```

## Решения

```
tbd
```
