.class Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment$3;
.super Landroid/os/AsyncTask;
.source "HomeSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->loadPrivacyStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment$3;->this$0:Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 310
    iget-object v1, p0, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment$3;->this$0:Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;

    invoke-virtual {v1}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/home/search/SearchActivity;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 312
    .local v0, "preferences":Landroid/content/SharedPreferences;
    const-string v1, "is_privacy_accepted"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 307
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "privacyAccepted"    # Ljava/lang/Boolean;

    .prologue
    .line 318
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment$3;->this$0:Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;

    # invokes: Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->startLocationActivity()V
    invoke-static {v0}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->access$000(Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;)V

    .line 323
    :goto_0
    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment$3;->this$0:Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;

    # invokes: Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->showPrivacyDisclaimerDialog()V
    invoke-static {v0}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;->access$100(Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 307
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/settings/HomeSettingsActivity$HomeSettingsFragment$3;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
