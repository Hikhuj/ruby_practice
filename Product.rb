class Product

    @@id
    @@name
    @@description
    @@category
    @@manufacturer
    @@model
    @@inventory

    MIN_INVENTORY = 10

    def initialize(id, name, description, category, manufacturer, model)
        @id = id
        @name = name
        @description = description
        @category = category
        @manufacturer = manufacturer
        @model = model
    end

    def not_available
        return "El producto #@name de la categoria #@category no esta disponible."
    end

    def inventario
        return "Minimo en existencia debe ser de #{MIN_INVENTORY}."
    end
