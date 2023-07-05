using BranchSDK;

namespace Timber;

public partial class MainPage : ContentPage
{
    int count = 0;

    public MainPage()
    {
        InitializeComponent();
    }

    private void OnCounterClicked(object sender, EventArgs e)
    {
        count++;

        if (count == 1)
            CounterBtn.Text = $"Clicked {count} time";
        else
            CounterBtn.Text = $"Clicked {count} times";

        SemanticScreenReader.Announce(CounterBtn.Text);

        // Send Branch Test Event
        SendEvent();
    }

    void SendEvent()
    {
        BranchEvent branchEvent = new BranchEvent(BranchEventType.PURCHASE);
        branchEvent.SetAlias("new_user_purchase");
        branchEvent.SetRevenue((float)1.5);
        branchEvent.SetShipping((float)10.5);
        branchEvent.SetCurrency(BranchCurrencyType.USD);
        branchEvent.SetTax((float)12.3);

        BranchUniversalObject buo1 = new BranchUniversalObject();
        buo1.canonicalIdentifier = "id12345";
        buo1.title = "id12345 title";
        buo1.contentDescription = "ITEM 1";
        BranchUniversalObject buo2 = new BranchUniversalObject();
        buo2.canonicalIdentifier = "id12345";
        buo2.title = "id12345 title";
        buo2.contentDescription = "ITEM 2";

        List<BranchUniversalObject> list = new List<BranchUniversalObject>();
        list.Add(buo1);
        list.Add(buo2);
        branchEvent.AddContentItems(list);


        Branch.GetInstance().SendEvent(branchEvent);
    }
}

