namespace :counter_cache do

	desc 'Counter cache for Comments on Articles'
	task comments_counter: :environment do
		#Para poder actualizar los modelos viejos primero es necesario ejecutar el metodo reset_column_information
		#y asi asegurar que el modelo tenga la data más reciente de las columnas luego de agregar la nueva
		Article.reset_column_information
		Article.find_each do |x|
      Article.reset_counters(x.id, :comments)
    end
	end

end
