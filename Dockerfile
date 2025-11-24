# Используем официальный образ Nginx для обслуживания статики
FROM nginx:alpine

# Удаляем стандартный индексный файл (чтобы наш index.html был главным)
RUN rm /usr/share/nginx/html/index.html

# Копируем ваш index.html и pricing_page.md в папку Nginx для статического контента
COPY index.html /usr/share/nginx/html/
COPY pricing_page.md /usr/share/nginx/html/