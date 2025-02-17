class Project
    attr_reader :title
    
    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        backers = ProjectBacker.all.select do |backer| 
            backer.project == self
    end
        backers.map do |projectbacker|
            projectbacker.backer
        end
    end
end