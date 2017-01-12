require 'rails_helper'

RSpec.feature "views question details" do
  scenario "sees all the questions" do
    test_question = Question.create(title: "How much wood could a woodchuck chuck if a woodchuck could chuck wood?", body: "It eats you, starting with your bottom. Don't care much for fancy parties. And you know the monkey's just,'I mock you with my monkey pants!' This may come as a shock, but I'm actually not very good at talking to girls. Wash, we've got some local color happening. We don't have wings, we just skate around with perfect hair fighting crime. Scenario: We raise Buffy from the grave. She tries to eat our brains. In my world, we have people in chains, and we can ride them like ponies. The news isn't there to tell you what happened. It's there to tell you what it wants you to hear or what it thinks you want to hear. That girl will rain destruction down on you and your ship.")
    a_question = Question.create(title: "What is the airspeed velocity of an unladen sparrow?", body: "As my hunter slowly picks her way through the Mines of Moria, I decided it was about time to get my alt on and roll up another character. Orcs, trolls, undead, cattle, space squid goats with gazelle legs - are you kidding me? How do heroics feel as a whole? Most likely this means that you received a fraudulent code from a third-party seller. This is also why we're allowing players to rent their own servers and create their own private worlds with their own rules. We should just accept the fact that the game will quickly disappoint us and we will look to Blizzard to save us once again.")

    visit questions_path
    expect(page).to have_content(test_question.title)
    expect(page).to have_content(a_question.title)
  end
end
