package ua.nikiforov.qa.converter;

import org.springframework.core.convert.converter.Converter;
import ua.nikiforov.qa.entities.Tag;

import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class StringAsTagsList implements Converter<String, List> {
    @Override
    public List<Tag> convert(String source) {
        return Stream.of(source.split(" ")).parallel().map(s -> {
            Tag tag = new Tag();
            tag.setName(s);
            return tag;
        }).collect(Collectors.toList());
    }
}
