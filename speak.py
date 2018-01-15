class Speak():
    def __init__(self):
        self.default_text = {
            'INTRO' : 'Hi! I am RADAR. How may I help you today?  You can start by selecting a goal that you want to achieve.',
            'INVALID_STATE' : "I am afraid, I can't, do that, Dave!  It is impossible to achieve the goal from this start state.  Fortunately, I have a suggestion for you.",
            'VALIDATE_PLAN' : 'I validated the plan for you.  If the plan appears in green, you are good to go.  Otherwise, if you see a red action, hover over it to see the reason it is invalid.',
            'CORRECT_PLAN' : 'I corrected the invalid plan.  It should work like a charm now!',
            'SUGGEST_PLAN' : 'Here is a plan that will help you achieve your Goal.  I am secretly praying you like it.',
            'EXPLAIN' : 'I am sorry that the plan seemsed inexplicable.  Here is what I think might be the reason for that.',
            'RESOURCE_UPDATED' : 'The resource was successfully updated.',
            'OPTIMAL_PLAN' : 'This is the best plan in terms of action costs that achieves the goal.',
            'GOAL_SELECTED' : 'Your goal was successfully selected.',
            'MODEL_UPDATED' : 'Thank you for reviewing my explanations and providing valuable feedback.  I have updated both our models in accordance to your wishes'
        }

    def getSpeechText(self, s):
        return self.default_text[ s ]
            
