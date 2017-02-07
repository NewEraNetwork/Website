Repository.define do
    repositories provider: :github, namespace: 'StratusNetwork' do
        repository :data do
            klass           Repository::Data
            repo            'Data'
            branch          'master'
            services        [:data]
        end
        visible? true do
            repository :www do
                title           "Webpage"
                description     "Our open source Webpage"
                repo            "web-development-front"
                open?           true
            end

            repository :rotations do
                title           "Rotations"
                description     "Our Map Rotations"
                repo            "Map-Rotations"
                open?           true
            end
        end
    end
end
