package se.pro12.ironfox.service;

import se.pro12.ironfox.model.Sheet;
import se.pro12.ironfox.util.Parser;

import javax.ejb.Singleton;

import java.util.ArrayList;
import java.util.List;

@Singleton
public class ParserService {

    public static List<Parser> parsers = new ArrayList<>();

    public boolean isValid(Sheet sheet) {
        return parsers.stream().anyMatch(
                parser -> parser.isValid(sheet));
    }
}
