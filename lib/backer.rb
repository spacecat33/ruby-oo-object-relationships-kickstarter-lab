class Backer
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects 
        y = ProjectBacker.all.select do |x|     #y = backed_projects (plural); x = backed_project (singular)
            x.backer == self
    end
        y.map do |projectbacker|
            projectbacker.project
        end
    end
end
