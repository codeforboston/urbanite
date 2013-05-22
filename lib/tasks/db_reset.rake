namespace :db do
  desc "Reset database"
  task reset: :environment do
    tasks = %w(drop migrate)
    tasks.each { |task| Rake::Task["db:#{task}"].invoke }
  end
end

namespace :db do
  desc "Reset database with populate"
  task rp: :environment do
    tasks = %w(drop migrate populate)
    tasks.each { |task| Rake::Task["db:#{task}"].invoke }
  end
end

