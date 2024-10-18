CREATE TABLE IF NOT EXISTS foodName (
    food_id          SERIAL PRIMARY KEY,
    name        varchar(100) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS foodFlavor (
    food_id INT PRIMARY KEY,
    sweet decimal CHECK (sweet >= -1 AND sweet <= 1), 
    sour decimal CHECK (sour >= -1 AND sour <= 1),
    rich decimal CHECK (rich >= -1 AND rich <= 1),
    meaty decimal CHECK (meaty >= -1 AND meaty <= 1),
    spicy decimal CHECK (spicy >= -1 AND spicy <= 1),
    spice decimal CHECK (spice >= -1 AND spice <= 1),
    smoky decimal CHECK (smoky >= -1 AND smoky <= 1),
    cream decimal CHECK (cream >= -1 AND cream <= 1),
    FOREIGN KEY (food_id) REFERENCES foodName(food_id)
);

CREATE TABLE IF NOT EXISTS foodType (
    food_id INT PRIMARY KEY,
    soup decimal CHECK (soup >= -1 AND soup <= 1), 
    stir_fried decimal CHECK (stir_fried >= -1 AND stir_fried <= 1),
    fried decimal CHECK (fried >= -1 AND fried <= 1),
    grilled decimal CHECK (grilled >= -1 AND grilled <= 1),
    baked decimal CHECK (baked >= -1 AND baked <= 1),
    roasted decimal CHECK (roasted >= -1 AND roasted <= 1),
    steamed decimal CHECK (steamed >= -1 AND steamed <= 1),
    boiled decimal CHECK (boiled >= -1 AND boiled <= 1),
    raw decimal CHECK (raw >= -1 AND raw <= 1),
    braised decimal CHECK (braised >= -1 AND braised <= 1),
    stewed decimal CHECK (stewed >= -1 AND stewed <= 1),
    FOREIGN KEY (food_id) REFERENCES foodName(food_id)
    
);

/*
CREATE TABLE IF NOT EXISTS ingredients (
    food_id INT PRIMARY KEY,
    
    FOREIGN KEY (food_id) REFERENCES foodName(food_id)
    
)
*/