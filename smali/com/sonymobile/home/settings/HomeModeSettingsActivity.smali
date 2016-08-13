.class public Lcom/sonymobile/home/settings/HomeModeSettingsActivity;
.super Landroid/app/Activity;
.source "HomeModeSettingsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 58
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 59
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v1, 0x7f030027

    invoke-virtual {p0, v1}, Lcom/sonymobile/home/settings/HomeModeSettingsActivity;->setContentView(I)V

    .line 32
    invoke-virtual {p0}, Lcom/sonymobile/home/settings/HomeModeSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 33
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/sonymobile/home/settings/HomeModeSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 36
    :cond_0
    const-string v1, "SettingsHomeMode"

    invoke-static {v1}, Lcom/sonymobile/home/statistics/TrackingUtil;->setScreen(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 44
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 46
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonymobile/home/settings/HomeModeSettingsActivity;->onBackPressed()V

    .line 47
    const/4 v0, 0x1

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
