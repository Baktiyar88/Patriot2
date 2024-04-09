package com.boots.repository;

import com.boots.entity.News;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NewsRepository extends JpaRepository<News, Long> {
    // Здесь могут быть добавлены дополнительные методы запросов, если требуется


}
