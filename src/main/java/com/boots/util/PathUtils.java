package com.boots.util;

public class PathUtils {

    /**
     * Очищает путь файла, удаляя потенциально опасные последовательности символов.
     *
     * @param path Путь к файлу для очистки.
     * @return Очищенный путь к файлу.
     */
    public static String cleanPath(String path) {
        if (path == null) {
            return null;
        }
        // Заменяем обратные слеши на обычные слеши для единообразия
        String cleanedPath = path.replace("\\", "/");

        // Удаляем последовательности "../" для предотвращения выхода за пределы директории загрузки
        while (cleanedPath.contains("../")) {
            cleanedPath = cleanedPath.replace("../", "");
        }

        // Возвращаем исходное имя файла, но уже без потенциально опасных последовательностей
        return cleanedPath;
    }
}
