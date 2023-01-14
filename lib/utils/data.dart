import '../models/sentence.dart';
import '../models/verb.dart';

import '../models/grammar__sentence.dart';

final grammar_sentenecs = [
  {
    GrammarSentence(
        suggestions: [
          "have",
          "has been",
          "have been",
        ],
        missingWord: "have been",
        firstPart: "They",
        secondPart: "playing in the garden for 3 days")
  },
  {
    GrammarSentence(
        suggestions: ["were", "were", "is", "am", "are"],
        missingWord: "cooked",
        firstPart: "Dad",
        secondPart: "for us a delicious meal, last Friday.")
  },
  {
    GrammarSentence(
        suggestions: [
          "told",
          "telling",
          "tolding",
          "tell",
        ],
        missingWord: "told",
        firstPart: "One day, James",
        secondPart: "Kate that she should not touch the machine.")
  },
  {
    GrammarSentence(
        suggestions: ["has", "have been", "has been", "playing"],
        missingWord: "has been",
        firstPart: "The cat",
        secondPart: "playing with Sara for 2 hours")
  },
  {
    GrammarSentence(
        suggestions: ["were", "were", "is", "am", "are"],
        missingWord: "were",
        firstPart: "Rohan and Sania",
        secondPart: "going to school, when their mother called them.")
  },
  {
    GrammarSentence(
        suggestions: ["were", "were", "is", "am", "are"],
        missingWord: "were",
        firstPart: "The birds ",
        secondPart: "flying in the sky, when he saw them")
  },
  {
    GrammarSentence(
        suggestions: ["did", "done", "do", "does", "doing"],
        missingWord: "do",
        firstPart: "Did she",
        secondPart: "her homework?")
  },
  {
    GrammarSentence(
        suggestions: ["sat", "is", "are", "sit", "are sitting"],
        missingWord: "sat",
        firstPart: "They",
        secondPart:
            "under the tree, when they finished picking cotton, this morning")
  },
  {
    GrammarSentence(
        suggestions: ["was", "is", "were", "am", "are"],
        missingWord: "are",
        firstPart: "Pay attention to the teacher; you",
        secondPart: "just wasting your time, now. ")
  },
  {
    GrammarSentence(
        firstPart: "I",
        secondPart: "to the supermarket, in 2022",
        missingWord: "went",
        suggestions: ["go", "went", "be"]),
  },
  {
    GrammarSentence(
        firstPart: "last weekend I",
        secondPart: "football with my friends",
        missingWord: "played",
        suggestions: ["playing", "play", "played"]),
  },
  {
    GrammarSentence(
        firstPart: "Sudanese",
        secondPart: "the pyramids a long time ago.",
        missingWord: "built",
        suggestions: ["build", "buildt", "built"]),
  },
  {
    GrammarSentence(
        firstPart: "last week, The crow",
        secondPart: "to the cheese before the fox.",
        missingWord: "ran",
        suggestions: ["runing", "has ran", "has run", "ran"]),
  },
  {
    GrammarSentence(
        firstPart: "the pupils",
        secondPart: "at the graduation day, last year.",
        missingWord: "were",
        suggestions: ["runing", "were", "are", "is"]),
  },
  {
    GrammarSentence(
        firstPart: "Yesterday, the falcon's owner",
        secondPart: " the falcon to the desert",
        missingWord: "took",
        suggestions: ["take", "is taking", "taken", "took"]),
  },
  {
    GrammarSentence(
        firstPart: "Arab",
        secondPart: " new number symbols 250 years ago.",
        missingWord: "invented",
        suggestions: ["invented", "inventing", "havw invented"]),
  }
];

final verbs = [
  {
    Verb(word: "gone", type: "pp"),
    Verb(word: "go", type: "infinitive"),
    Verb(word: "went", type: "past"),
  },
  {
    Verb(word: "broke", type: "past"),
    Verb(word: "broken", type: "pp"),
    Verb(word: "break", type: "infinitive"),
  },
  {
    Verb(word: "did", type: "past"),
    Verb(word: "do", type: "infinitive"),
    Verb(word: "done", type: "pp"),
  },
  {
    Verb(word: "spoke", type: "past"),
    Verb(word: "spoken", type: "pp"),
    Verb(word: "speak", type: "infinitive"),
  },
  {
    Verb(word: "was, were", type: "past"),
    Verb(word: " 	been", type: "pp"),
    Verb(word: "am, is, are", type: "infinitive"),
  },
  {
    Verb(word: "had", type: "past"),
    Verb(word: "has, have", type: "infinitive"),
    Verb(word: "Had", type: "pp"),
  },
  {
    Verb(word: "Did", type: "past"),
    Verb(word: "do, does", type: "infinitive"),
    Verb(word: "done", type: "pp"),
  },
  {
    Verb(word: "known", type: "pp"),
    Verb(word: "Knew", type: "past"),
    Verb(word: "know, knows", type: "infinitive"),
  },
  {
    Verb(word: "thought", type: "past"),
    Verb(word: "think, thinks", type: "infinitive"),
    Verb(word: "thought", type: "pp"),
  },
  {
    Verb(word: "gone", type: "pp"),
    Verb(word: "Went", type: "past"),
    Verb(word: "go, goes", type: "infinitive"),
  },
  {
    Verb(word: "got", type: "past"),
    Verb(word: "get, gets", type: "infinitive"),
    Verb(word: "gotten", type: "pp"),
  },
  {
    Verb(word: "said", type: "past"),
    Verb(word: "say, says", type: "infinitive"),
    Verb(word: "Said", type: "pp"),
  },
  {
    Verb(word: "Wanted", type: "pp"),
    Verb(word: "want, wants", type: "infinitive"),
    Verb(word: "wanted", type: "past"),
  },
  {
    Verb(word: "seen", type: "pp"),
    Verb(word: "see, sees", type: "infinitive"),
    Verb(word: "Saw", type: "past"),
  },
  {
    Verb(word: "meant", type: "past"),
    Verb(word: "Meant", type: "pp"),
    Verb(word: "mean, means", type: "infinitive"),
  },
  {
    Verb(word: "Let", type: "pp"),
    Verb(word: "let, lets", type: "infinitive"),
    Verb(word: "let", type: "past"),
  },
  {
    Verb(word: "make, makes", type: "infinitive"),
    Verb(word: "Made", type: "pp"),
    Verb(word: "made", type: "past"),
  },
  {
    Verb(word: "came", type: "pp"),
    Verb(word: "come, comes", type: "infinitive"),
    Verb(word: "Come", type: "past"),
  },
  {
    Verb(word: "took", type: "past"),
    Verb(word: "taken", type: "pp"),
    Verb(word: "take, takes", type: "infinitive"),
  },
  {
    Verb(word: "Looked", type: "pp"),
    Verb(word: "look, looks", type: "infinitive"),
    Verb(word: "looked", type: "past"),
  },
  {
    Verb(word: "Thanked", type: "pp"),
    Verb(word: "thanked", type: "past"),
    Verb(word: "thank, thanks", type: "infinitive"),
  },
  {
    Verb(word: "told", type: "past"),
    Verb(word: "Told", type: "pp"),
    Verb(word: "tell, tells", type: "infinitive"),
  },
  {
    Verb(word: "Put", type: "pp"),
    Verb(word: "put, puts", type: "infinitive"),
    Verb(word: "put", type: "past"),
  },
  {
    Verb(word: "tiked", type: "past"),
    Verb(word: "Liked", type: "pp"),
    Verb(word: "like, likes", type: "infinitive"),
  },
  {
    Verb(word: "Talked", type: "pp"),
    Verb(word: "talked", type: "past"),
    Verb(word: "talk, talks", type: "infinitive"),
  },
  {
    Verb(word: "Needed", type: "pp"),
    Verb(word: "need, needs", type: "infinitive"),
    Verb(word: "needed", type: "past"),
  },
  {
    Verb(word: "Believed", type: "pp"),
    Verb(word: "believed", type: "past"),
    Verb(word: "believe, believes", type: "infinitive"),
  },
  {
    Verb(word: "gave", type: "past"),
    Verb(word: "give, gives", type: "infinitive"),
    Verb(word: "given", type: "pp"),
  },
  {
    Verb(word: "Tried", type: "pp"),
    Verb(word: "try, tries", type: "infinitive"),
    Verb(word: "tried", type: "past"),
  },
  {
    Verb(word: "call, calls", type: "infinitive"),
    Verb(word: "Called", type: "pp"),
    Verb(word: "called", type: "past"),
  },
  {
    Verb(word: "found", type: "past"),
    Verb(word: "Found", type: "pp"),
    Verb(word: "find, finds", type: "infinitive"),
  },
  {
    Verb(word: "Felt", type: "pp"),
    Verb(word: "feel, feels", type: "infinitive"),
    Verb(word: "Felt", type: "past"),
  },
  {
    Verb(word: "Happened", type: "pp"),
    Verb(word: "happened", type: "past"),
    Verb(word: "happen, happens", type: "infinitive"),
  },
  {
    Verb(word: "Asked", type: "pp"),
    Verb(word: "ask, asks", type: "infinitive"),
    Verb(word: "asked", type: "past"),
  },
];
final sentences = [
  {
    Sentence(word: "it's", position: 3),
    Sentence(word: "think", position: 2),
    Sentence(word: "town", position: 6),
    Sentence(word: "Asia.", position: 8),
    Sentence(word: "I", position: 1),
    Sentence(word: "a big", position: 4),
    Sentence(word: "in", position: 7),
  },
  {
    Sentence(word: "has", position: 2),
    Sentence(word: "200", position: 4),
    Sentence(word: "Sudan", position: 1),
    Sentence(word: "about", position: 3),
    Sentence(word: "pyramids.", position: 6),
  },
];
