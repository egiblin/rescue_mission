require 'rails_helper'

RSpec.feature "views question details" do
  scenario "clicks a question and goes to the show page" do
    test_question = Question.create(title: "How much wood could a woodchuck chuck if a woodchuck could chuck wood?", body: "It eats you, starting with your bottom. Don't care much for fancy parties. And you know the monkey's just,'I mock you with my monkey pants!' This may come as a shock, but I'm actually not very good at talking to girls. Wash, we've got some local color happening. We don't have wings, we just skate around with perfect hair fighting crime. Scenario: We raise Buffy from the grave. She tries to eat our brains. In my world, we have people in chains, and we can ride them like ponies. The news isn't there to tell you what happened. It's there to tell you what it wants you to hear or what it thinks you want to hear. That girl will rain destruction down on you and your ship.")

    visit questions_path
    click_on test_question.title
    expect(page).to have_content(test_question.title)
  end
end
