User.destroy_all
Workplace.destroy_all

loreneUser = Freeuser.create!(
  email: 'lorene@freeuser.com',
  password: '123456'
  )
admin = Admin.create!(
  email: 'admin@admin.con',
  password: 'admin1234'
  )
loreneOwner = Owner.create!(
  email: 'lorene@owner.com',
  password: '123456'
  )
workplaces = [
    {
      owner: loreneOwner,
      admin: admin,
      name: 'Sarona Space',
      description: 'The coworking space, Sarona space is a unique concept. A “boutique” space within a friendly and dynamique community.
Able to leverage its large and international mentor network, Sarona Space provides constant support to the startups during all stages of their evolution, dramatically reducing the risk of failure.',
      location: 'Ben Yehuda 13, Tel Aviv-Yafo',
      area: 'Tel Aviv',
      category: 'The Big City',
      picture: 'https://www.coworker.com/israel/kefar-sava/sarona-space-kefar-sava#lg=1&slide=0',
  },
    {
      owner: loreneOwner,
      admin: admin,
      name: 'Big Ben',
      description: 'Big Ben - Time Cafe is a shared working space in the heart of the business center of Israel, it offering a quiet and comfortable space for working, study, social and working meetings, workshops and class, lectures and etc. ',
      location: '22 Ha-Yetsira Street, Tel Aviv, Israel',
      area: 'Tel Aviv',
      category: 'The Big City',
      picture: 'https://www.coworker.com/israel/tel-aviv/big-ben-time-cafe#lg=1&slide=0',
  },
]

Workplace.create!(workplaces)
