class Mentor
    attr_accessor :name
    
    def initialize(name)
        self.name = name
    end
    
    def job
        puts "#{self.name}です。私は現役のITプロフェッショナルです。"
    end
end

class RailsMentor < Mentor  # RailsMentor に Mentor を継承
# 親クラスで initializeメソッドが定義されているので子クラスでオーバーライドさせる必要はない
    def job  # jobメソッドをオーバーライド(上書き) 
        puts "#{self.name}です。私はRubyとRailsでWebアプリケーションを作ります。"
    end
end

kirameki = Mentor.new("煌木")
akaide = RailsMentor.new("赤出")

kirameki.job
akaide.job