package com.codecool.web.model;

import java.util.Objects;

public final class Poem extends AbstractModel {
    
    private final String title;
    private final String content;
    
    public Poem(int id, String title, String content) {
        super(id);
        this.title = title;
        this.content = content;
    }
    
    public String getTitle() {
        return title;
    }
    
    public String getContent() {
        return content;
    }
    
    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        if (!super.equals(o)) return false;
        Poem poem = (Poem) o;
        return content == poem.content && Objects.equals(content, poem.content);
    }
    
    @Override
    public int hashCode() {
        return Objects.hash(super.hashCode(), title, content);
    }
}
