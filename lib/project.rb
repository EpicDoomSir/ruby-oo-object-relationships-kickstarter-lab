require_relative 'project_backer.rb'

class Project
    attr_accessor :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        ProjectBacker.all.select{|project| project.project == self}.map{|project| project.backer}
    end
end