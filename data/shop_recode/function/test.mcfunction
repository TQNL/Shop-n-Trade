$data merge storage test:test {components_string:'$(components)'}
execute store result storage test:test length int 1 run data get storage test:test components_string