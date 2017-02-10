include FactoryGirl::Syntax::Methods

user = create(:user)

create(:worksheet, user: user, action: :enter)
create(:worksheet, user: user, action: :leave)
create(:worksheet, user: user, action: :enter)
create(:worksheet, user: user, action: :leave)
create(:worksheet, user: user, action: :pause)