package se.pro12.ironfox.util;

import se.pro12.ironfox.model.Sheet;

public interface Parser {
    Sheet fillAvailable();
    int getPriority();
    boolean isValid(Sheet sheet);
}
