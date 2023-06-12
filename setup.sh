echo "Cloning repository from github..."
git clone https://github.com/google/pmax_best_practices_dashboard.git

cd pmax_best_practices_dashboard
npm init gaarf-wf@latest -- --answers=answers.json
