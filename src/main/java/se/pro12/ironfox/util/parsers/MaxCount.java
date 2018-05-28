package se.pro12.ironfox.util.parsers;

import se.pro12.ironfox.model.Sheet;
import se.pro12.ironfox.service.ParserService;
import se.pro12.ironfox.util.Parser;

import javax.annotation.PostConstruct;
import javax.ejb.Singleton;
import javax.ejb.Startup;

@Startup
@Singleton
public class MaxCount implements Parser {
    @PostConstruct
    public void init() {
        ParserService.parsers.add(this);
    }

    @Override
    public Sheet fillAvailable() {
        return null;
    }

    @Override
    public int getPriority() {
        return 0;
    }

    @Override
    public boolean isValid(Sheet sheet) {
        return false;
    }
}