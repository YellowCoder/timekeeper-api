include FactoryGirl::Syntax::Methods

user = create(:user, jwt_token: '123')
study_category = create(:category, name: 'study')
work_category = create(:category, name: 'work')

create(:worksheet, user: user, category: work_category, action: :start)
create(:worksheet, user: user, category: work_category, action: :stop)
create(:worksheet, user: user, category: study_category, action: :start)
create(:worksheet, user: user, category: study_category, action: :pause)
create(:worksheet, user: user, category: study_category, action: :stop)