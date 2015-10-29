Education.destroy_all
Education.create!(title: 'The Iron Yard', description: 'Rails Engineering', date: '12-14-2014')
Education.create!(title: 'Instituto Educacional Juan XXIII', description: 'High School Science Diploma', date: '06-24-2012')

Experience.destroy_all
Experience.create!(title: 'Lead Software Developer', company: 'MATI Energy', description: 'MATI Project', date: 'February 19, 2015')
Experience.create!(title: 'Front End Developer - Intern', company: 'Windsor Circle', description: 'Front end developer', date: 'May 1, 2015')

Project.destroy_all
Project.create!(title: 'MATI Website', description: 'Redesigned the MATI Website', live_url: 'http://matienergy.com', source_code_link: '')