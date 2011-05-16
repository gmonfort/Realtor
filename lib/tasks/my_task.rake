# namespace :db do
#   
#   #rake db:dump
#   desc "dumps the database to a sql file"
#   task :dump => :environment do
#     puts "Creating #{database}_dump.sql file."
#     `mysqldump -u "#{username}" --password="#{password}" "#{database}" > "#{database}"_dump.sql`
#   end
# 
#   #rake db:dumpimport - Resets the DB.
#   desc "imports the #{database}_dump.sql file to the current db"
#   task :dumpimport => [:environment, :reset] do
#     `mysql -u root --password="#{password}" "#{database}" < "#{database}"_dump.sql`
#   end
# 
# end

namespace :db do
  namespace :dump do
    desc 'Dump db structure + data to SQL file, optionally a name for the dump file can be provided'
    task :all, :name, :needs => :environment do |t, args|
      args.with_defaults(:name => "db_dump")

      begin
        config = ActiveRecord::Base.configurations[RAILS_ENV || 'development']

        u = config['username']
        p = config['password']
        db = config['database']

        dump_file = File.join(Rails.root, 'db', args[:name] + "__" + db + ".sql.gz")

        case config["adapter"]
        when "mysql"
        when "mysql2"
          cmd = "mysqldump -u #{u} --password='#{p}' '#{db}' | gzip > #{dump_file}"
        when "postgresql"
          # we must rely on the existance of a valid unix and pg user with a valid ~/.pgpass file
          cmd = "pg_dump '#{db}' | gzip > #{dump_file}"
        end

        system cmd
      rescue => e
        $stderr.puts "Error: %s" % e
      end
    end
  end
end

def backup_path
  "~/.backups/db/project/#{RAILS_ENV}_structure.sql"
end
