require('spec_helper')

describe(Survey) do
  it('tests for presence of questions in a survey') do
    survey = Survey.create({:name => "Friends"})
    question1 = Question.create({:name => "What's up?", :survey_id => survey.id})
    question2 = Question.create({:name => "What is not up?", :survey_id => survey.id})
    expect(survey.questions).to(eq([question1, question2]))
  end

  it('converts user first letter text entered into capital letters') do
    survey = Survey.create({:name => "gallup poll", :id => nil})
    expect(survey.name.upcase()).to(eq("GALLUP POLL"))
  end
end
