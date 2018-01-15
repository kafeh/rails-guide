namespace :counter_cache do

	desc 'Counter cache for Comments on Articles'
	task comments_counter: :environment do
		Article.reset_column_information
		Article.find_each do |x|
      Article.reset_counters(x.id, :comments)
    end
	end
	
end
