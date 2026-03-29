import time
from datetime import datetime, timedelta

class AffiliateBot:
    def __init__(self):
        self.users = {}

    def register_user(self, user_id):
        if user_id in self.users:
            print(f"User {user_id} is already registered.")
        else:
            self.users[user_id] = {'trial_end': datetime.now() + timedelta(days=7)}
            print(f"User {user_id} registered for a 7-day free trial.")

    def check_trial_status(self, user_id):
        if user_id not in self.users:
            print(f"User {user_id} is not registered.")
            return False
        trial_end = self.users[user_id]['trial_end']
        if datetime.now() < trial_end:
            remaining_days = (trial_end - datetime.now()).days
            print(f"User {user_id} has {remaining_days} days left in their trial.")
            return True
        else:
            print(f"User {user_id}'s trial has ended.")
            self.users.pop(user_id)  # remove user after trial ends
            return False

    def simulate_trial_period(self, user_id):
        print(f"Simulating 7-day trial for user {user_id}...")
        time.sleep(1)  # Simulate time passing
        self.check_trial_status(user_id)

# Example usage
bot = AffiliateBot()
bot.register_user('user123')
bot.simulate_trial_period('user123')