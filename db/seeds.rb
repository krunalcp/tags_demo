s1 = Site.create(name: 'KrunaL')
s2 = Site.create(name: 'Purv')
s3 = Site.create(name: 'Divy')

Project.create(site_id: 1, name: 'K Project1')
Project.create(site_id: 1, name: 'K Project2')
Project.create(site_id: 1, name: 'K Project3')

Project.create(site_id: 2, name: 'P Project1')
Project.create(site_id: 2, name: 'P Project2')
Project.create(site_id: 2, name: 'P Project3')

Project.create(site_id: 3, name: 'D Project1')
Project.create(site_id: 3, name: 'D Project2')
Project.create(site_id: 3, name: 'D Project3')

User.create(site_id: 1, name: 'K User1')
User.create(site_id: 1, name: 'K User2')
User.create(site_id: 1, name: 'K User3')

User.create(site_id: 2, name: 'P User1')
User.create(site_id: 2, name: 'P User2')
User.create(site_id: 2, name: 'P User3')

User.create(site_id: 3, name: 'D User1')
User.create(site_id: 3, name: 'D User2')
User.create(site_id: 3, name: 'D User3')
