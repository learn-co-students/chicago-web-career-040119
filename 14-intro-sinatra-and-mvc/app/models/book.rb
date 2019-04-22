class Book < ActiveRecord::Base

  def truncated_snippet
    if snippet
      snippet[0..20]
    end
  end

end
