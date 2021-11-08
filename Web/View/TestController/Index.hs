module Web.View.TestController.Index where
import Web.View.Prelude

data IndexView = IndexView { }

instance View IndexView where
    html IndexView { } = [hsx|
        <h1>Index</h1>
        <form method="POST" action={DoAction}>
            <div class="form-group">
                <input
                    type="radio"
                    name="action"
                    value="option1"
                    checked
                > option1
            </div>
            <div class="form-group">
                <input
                    type="radio"
                    name="action"
                    value="option2"
                > option2
            </div>
            <div class="form-group">
                <input
                    type="radio"
                    name="action"
                    value="option3"
                > option3
            </div>
            <button type="submit" class="btn btn-primary btn-block">Do it!</button>
        </form>
    |]
