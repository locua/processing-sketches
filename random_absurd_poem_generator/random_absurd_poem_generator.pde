int y = 50;

void write_word(String[] words) {
  int n = int(random(words.length));
  textSize(random(20, 40));
  text(words[n], int(random(50, 150)), y);
  y = y + 30;
}
void setup() {
  size(400, 300); 
  background(255);
  fill(#23F511);
  newsentence();
}

  void newsentence() {
    y = 50;
    background(255);
    String[] art = { 
      "the", "my", "your", "his", "her", "every", "one", "the only", "that", "this", 
      "a", "several", "none of the", 
    };
    String[] adj = { "happy", "little", "cloudy", "wet", "silly", "absurd", 
      "terrifying", "unique", "complex", "complicated", "infinite", "finite", 
      "helpless", "clean", "archaic", "divine", "hell-bound", "disharmonious", 
      "scrawny", "bulging", "rare", "noisy", "silent", "soul-devouring", "kind", 
      "beautiful", "blurry", "naked", "smooth", "lazy", "monstrous", "saturated", 
      "ancient", "fabulous", "glitching", "pearly", "textured", "dry", "cracked", 
      "broken", "stubborn", "straight", "flamboyant", "feminine", "brittle", 
      "crumbling", "soft", "compassionate", "satanic", "mystical", "magical", 
      "evil", "supremacist", "ambient" 
    };
    String[] nou = { "tree", "house", "people", "limbs", "toe", "nail", 
      "pieces", "fart", "cycles", "penis", "hormone", "gender", "sexuality", 
      "feet", "table", "cosmos", "radiator", "book", "menstrual cycle", "envelope", 
      "feeling", "rigidity", "wealth", "heart", "tone", "husband", "children", 
      "man", "woman", "person", "ring", "clothes", "outfit", "flexibility", 
      "fear", "depravity", "excellece", "cunt", "love", "anus", "token", 
      "endlessness", "end", "beginning", "hooks", "friendship" 
    };
    String[] ver = { "dances", "flys", "jumps", "falls", "catapults", "finds", 
      "conquers", "fumbles", "dies", "lives", "creates", "programmes", "sits", 
      "waits", "flips", "trips", "fucks", "throw's", "feels", "peels", 
      "mentions", "speaks of", "laughs of", "enters", "leaves", "punches", 
      "hurts", "destroys", "kills", "makes peace", "quits", "scratches", 
      "pleasures", "touches", "spins", "stirs", "steady's", "shakes", "cracks", 
    };
    String[] pre = { "under", "behind", "in front of", "near", "following", 
      "beyond", "beneath", "against", "into", "considering", "with", "towards", 
      "beside", "like", "unlike"
    };
    write_word(art);
    write_word(adj);
    write_word(nou);
    write_word(ver);
    write_word(pre);
    write_word(art);
    write_word(adj);
    write_word(nou);
  }
  
  void draw() {
  }
  void mousePressed() {
  newsentence();
  }