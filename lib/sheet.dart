/**
 * A sheet is the entire note sheet of both verticals and horizontals
 */
class Sheet {
  List<Acordion> acordions;
}

/**
 * An acordion is all notes in a vertical column.
 * Should be max 4 notes in an acordion
 */
class Acordion {
  List<Note> note; 
}

/**
 * A single note
 */
class Note {
  /**
   * range 110-774
   * 100s represent the range
   * 10s note
   * 1s represent alteration, 0 is not specified
   */
  int value;
}