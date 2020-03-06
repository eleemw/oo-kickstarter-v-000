#backer.rb

class Backer
  attr_reader :name, :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

  def back_project(project) #accepts Project as an argument and stores it in backed_projects array
    self.backed_projects << project
    project.add_backer(self) if !project.backers.include?(self) #adds the backer to the project's backers array if it is not already included
  end
end
