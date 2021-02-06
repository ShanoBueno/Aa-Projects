class PolyTreeNode

    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent
        @parent
    end

    def children
        @children
    end

    def value
        @value
    end

    def parent=(new_parent)
      if self.parent
        self.parent.children.delete(self)
      end
        @parent = new_parent
     
        return nil if self.parent == nil
      
        if !@parent.children.include?(self) 
          @parent.children << self
        end
    end

    def add_child(child)
        child.parent = self
    end

    def remove_child(child)
      if !self.children.include?(child)
        raise 
      end
      child.parent = nil 
    end

     def dfs(value)
      if self.value == value
        return self
      end

      self.children.each do |child|

           result = child.dfs(value) 
           return result if result != nil
           
        
      end
      return nil
    end

      def bfs(node,value)
      if node.value == value
        return node
      end
    end

      # if value < node.value 






  















    
end

# class Searchable

#     def dfs(node,value = nil)
#       if node.value == value
#         return node
#       end

#       node.children.each do |child|
#         if child.value == value
#           return child
#         else
#           dfs(child)
#         end
#       end
#       return nil
#     end

#     def bfs(node,value)
#       if node.value == value
#         return node
#       end
#       if value < node.value 






  

#     end



# n1 = PolyTreeNode.new("first")
# n2 = PolyTreeNode.new("second")


# print n1.parent=(n2)
# print n1.parent
