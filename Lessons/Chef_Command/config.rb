#This is a copy of the config.rb used in this lesson.
cookbook_path ['~/chef/cookbooks']
local_mode true
if File.basename($PROGRAM_NAME).eql?('chef') && ARGV[0].eql?('generate')
        chefdk.generator.license = "all_rights"
        chefdk.generator.copyright_holder = "Student Name"
        chefdk.generator.email = "you@example.com"
        chefdk.generator_cookbook = "~/generator/lcd_origin"
end

