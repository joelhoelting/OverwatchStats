class OverwatchStats::CLI

  attr_accessor :stats

  def start
    greeting
    display_stats_alphabetically
    menu
  end

  def greeting
    puts "Cheers Love! Welcome to OverwatchStats!"
  end

  def menu
    puts "Type the following to change sorting rules: '(win)rate' '(pop)ularity' '(score)min' '(kd)ratio' or '(alph)abetically'"
    puts "Type the name of one of the above heroes to see more about that hero"
    puts "Type 'exit' to exit."

    input = gets.strip.downcase
      if input == "winrate" || input == "win"
        display_stats_winrate
        menu
      elsif input == "popularity" || input == "pop"
        display_stats_popularity
        menu
      elsif input == "scoremin" || input == "score"
        display_stats_scoremin
        menu
      elsif input == "kdratio" || input == "kd"
        display_stats_herokd
        menu
      elsif input == "bastion"
        display_bastion
        menu
      elsif input == "d.va"
        display_dva
        menu
      elsif input == "genji"
        display_genji
        menu
      elsif input == "hanzo"
        display_hanzo
        menu
      elsif input == "junkrat"
        display_junkrat
        menu
      elsif input == "lucio"
        display_lucio
        menu
      elsif input == "mccree"
        display_mccree
        menu
      elsif input == "mei"
        display_mei
        menu
      elsif input == "mercy"
        display_mercy
        menu
      elsif input == "pharah"
        display_pharah
        menu
      elsif input == "reaper"
        display_reaper
        menu
      elsif input == "reinhardt"
        display_reinhardt
        menu
      elsif input == "roadhog"
        display_roadhog
        menu
      elsif input == "soldier76"
        display_soldier76
        menu
      elsif input == "symmetra"
        display_symmetra
        menu
      elsif input == "torbjorn"
        display_torbjorn
        menu
      elsif input == "tracer"
        display_tracer
        menu
      elsif input == "widowmaker"
        display_widowmaker
        menu
      elsif input == "winston"
        display_winston
        menu
      elsif input == "zarya"
        display_zarya
        menu
      elsif input == "zenyatta"
        display_zenyatta
        menu
      elsif input == "exit"
        exit
      else
        puts "Please make a valid selection..."
        menu
      end

    end

    def display_stats_alphabetically
      stats = OverwatchStats::StatScraper.current
      puts "||   HERO    ||    TYPE    ||    WINRATE    ||    POPULARITY   ||    GAMESCORE/MINUTE    ||    Kills/Deaths"
      stats.each.with_index(1) do |herostats, index|
        puts "|| #{index}. #{herostats[:heroname]}    ||    #{herostats[:herotype]}    ||    #{herostats[:winrate]}    ||    #{herostats[:popularity]}    ||    #{herostats[:scoremin]}    || #{herostats[:herokd]}"
      end
    end

    def display_stats_winrate
      stats = OverwatchStats::StatScraper.current
      bywinrate = stats.sort_by {|hash| hash[:winrate]}.reverse
      puts "||   HERO    ||    TYPE    ||    WINRATE    ||    POPULARITY   ||    GAMESCORE/MINUTE    ||    Kills/Deaths"
      bywinrate.each.with_index(1) do |herostats, index|
        puts "|| #{index}. #{herostats[:heroname]}    ||    #{herostats[:herotype]}    ||    #{herostats[:winrate]}    ||    #{herostats[:popularity]}    ||    #{herostats[:scoremin]}    || #{herostats[:herokd]}"
      end
    end

    def display_stats_popularity
      stats = OverwatchStats::StatScraper.current
      bypopularity = stats.sort_by {|hash| hash[:popularity]}.reverse
      puts "||   HERO    ||    TYPE    ||    WINRATE    ||    POPULARITY   ||    GAMESCORE/MINUTE    ||    Kills/Deaths"
      bypopularity.each.with_index(1) do |herostats, index|
        puts "|| #{index}. #{herostats[:heroname]}    ||    #{herostats[:herotype]}    ||    #{herostats[:winrate]}    ||    #{herostats[:popularity]}    ||    #{herostats[:scoremin]}    || #{herostats[:herokd]}"
      end
    end

    def display_stats_scoremin
      stats = OverwatchStats::StatScraper.current
      byscoremin = stats.sort_by {|hash| hash[:scoremin]}.reverse
      puts "||   HERO    ||    TYPE    ||    WINRATE    ||    POPULARITY   ||    GAMESCORE/MINUTE    ||    Kills/Deaths"
      byscoremin.each.with_index(1) do |herostats, index|
        puts "|| #{index}. #{herostats[:heroname]}    ||    #{herostats[:herotype]}    ||    #{herostats[:winrate]}    ||    #{herostats[:popularity]}    ||    #{herostats[:scoremin]}    || #{herostats[:herokd]}"
      end
    end

    def display_stats_herokd
      stats = OverwatchStats::StatScraper.current
      byherokd = stats.sort_by {|hash| hash[:herokd]}.reverse
      puts "||   HERO    ||    TYPE    ||    WINRATE    ||    POPULARITY   ||    GAMESCORE/MINUTE    ||    Kills/Deaths"
      byherokd.each.with_index(1) do |herostats, index|
        puts "|| #{index}. #{herostats[:heroname]}    ||    #{herostats[:herotype]}    ||    #{herostats[:winrate]}    ||    #{herostats[:popularity]}    ||    #{herostats[:scoremin]}    || #{herostats[:herokd]}"
      end
    end

    # def display_bastion
    #   array = OverwatchStats::Hero.hero_collect
    #   array.each do |x|
    #     if x.name.downcase == "bastion"
    #       puts "Name: #{x.name}"
    #       puts "Role: #{x.role}"
    #       puts ""
    #       puts "Lore: #{x.lore}"
    #       puts ""
    #       puts "Max HP: #{x.hp}" unless x.hp == nil
    #       puts "Ammo: #{x.ammo}" unless x.ammo == nil
    #       puts ""
    #       puts "**Abilities**"
    #       puts "------------------------"
    #       x.abilities.each do |ability|
    #         puts "Ability: #{ability[:ability_name]}"
    #         puts "Description: " + "#{ability[:ability_description]}"
    #         puts ""
    #       end
    #     else
    #       menu
    #     end
    #   end
    # end



    def display_bastion
      x = OverwatchStats::Hero.bastion
      show_stats(x)
    end

    def display_dva
      x = OverwatchStats::Hero.dva
      show_stats(x)
    end

    def display_genji
      x = OverwatchStats::Hero.genji
      show_stats(x)
    end

    def display_hanzo
      x = OverwatchStats::Hero.hanzo
      show_stats(x)
    end

    def display_junkrat
      x = OverwatchStats::Hero.junkrat
      show_stats(x)
    end

    def display_lucio
      x = OverwatchStats::Hero.lucio
      show_stats(x)
    end

    def display_mccree
      x = OverwatchStats::Hero.mccree
      show_stats(x)
    end

    def display_pharah
      x = OverwatchStats::Hero.pharah
      show_stats(x)
    end

    def display_reaper
      x = OverwatchStats::Hero.reaper
      show_stats(x)
    end

    def display_reinhardt
      x = OverwatchStats::Hero.reinhardt
      show_stats(x)
    end

    def display_roadhog
      x = OverwatchStats::Hero.roadhog
      show_stats(x)
    end

    def display_soldier76
      x = OverwatchStats::Hero.soldier76
      show_stats(x)
    end

    def display_symmetra
      x = OverwatchStats::Hero.symmetra
      show_stats(x)
    end

    def display_torbjorn
      x = OverwatchStats::Hero.torbjorn
      show_stats(x)
    end

    def display_tracer
      x = OverwatchStats::Hero.tracer
      show_stats(x)
    end

    def display_widowmaker
      x = OverwatchStats::Hero.widowmaker
      show_stats(x)
    end

    def display_winston
      x = OverwatchStats::Hero.winston
      show_stats(x)
    end

    def display_zarya
      x = OverwatchStats::Hero.zarya
      show_stats(x)
    end

    def display_zenyatta
      x = OverwatchStats::Hero.zenyatta
      show_stats(x)
    end

    def show_stats(x)
      puts "Name: #{x.name}"
      puts ""
      puts "Role: #{x.role}"
      puts "Max HP: #{x.hp}" unless x.hp == nil
      puts "Ammo: #{x.ammo}" unless x.ammo == nil
      puts ""
      puts "Lore: #{x.lore}"
      puts ""
      puts ""
      puts "**Abilities**"
      puts "------------------------"
      x.abilities.each do |ability|
        puts "Ability: #{ability[:ability_name]}"
        puts "Description: " + "#{ability[:ability_description]}"
        puts ""
      end
    end





end