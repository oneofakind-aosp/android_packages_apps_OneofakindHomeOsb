.class Lcom/sonymobile/home/search/SearchActivity$9;
.super Landroid/os/AsyncTask;
.source "SearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/search/SearchActivity;->updateWelcomeScreenStatus()V
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
.field final synthetic this$0:Lcom/sonymobile/home/search/SearchActivity;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/search/SearchActivity;)V
    .locals 0

    .prologue
    .line 827
    iput-object p1, p0, Lcom/sonymobile/home/search/SearchActivity$9;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    .line 830
    iget-object v5, p0, Lcom/sonymobile/home/search/SearchActivity$9;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    invoke-static {v5}, Lcom/sonymobile/home/search/SearchActivity;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 831
    .local v3, "preferences":Landroid/content/SharedPreferences;
    const-string v5, "is_privacy_accepted"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 834
    .local v1, "hasAcceptedPrivacy":Z
    const-string v5, "has_seen_welcome_screen"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 837
    .local v2, "hasSeenWelcomeScreen":Z
    iget-object v5, p0, Lcom/sonymobile/home/search/SearchActivity$9;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    invoke-static {v5}, Lcom/sonymobile/home/settings/HomeSettingsPreferenceManager;->getSourceForOnlineSearchOn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 840
    .local v0, "action":Ljava/lang/String;
    if-nez v1, :cond_0

    if-nez v2, :cond_0

    const-string v5, "SettingsActivity"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 827
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/search/SearchActivity$9;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "shouldShow"    # Ljava/lang/Boolean;

    .prologue
    .line 852
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity$9;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    invoke-virtual {v0}, Lcom/sonymobile/home/search/SearchActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity$9;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    invoke-virtual {v0}, Lcom/sonymobile/home/search/SearchActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 853
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 854
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity$9;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    # invokes: Lcom/sonymobile/home/search/SearchActivity;->showWelcomeScreen()V
    invoke-static {v0}, Lcom/sonymobile/home/search/SearchActivity;->access$1500(Lcom/sonymobile/home/search/SearchActivity;)V

    .line 864
    :cond_0
    :goto_0
    return-void

    .line 856
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity$9;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    # getter for: Lcom/sonymobile/home/search/SearchActivity;->mWelcomeVisible:Z
    invoke-static {v0}, Lcom/sonymobile/home/search/SearchActivity;->access$1600(Lcom/sonymobile/home/search/SearchActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 857
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity$9;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    const/4 v1, 0x1

    # setter for: Lcom/sonymobile/home/search/SearchActivity;->mIsNewInstance:Z
    invoke-static {v0, v1}, Lcom/sonymobile/home/search/SearchActivity;->access$1702(Lcom/sonymobile/home/search/SearchActivity;Z)Z

    .line 859
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity$9;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    # invokes: Lcom/sonymobile/home/search/SearchActivity;->initKeyboardVisibility()V
    invoke-static {v0}, Lcom/sonymobile/home/search/SearchActivity;->access$1800(Lcom/sonymobile/home/search/SearchActivity;)V

    .line 861
    iget-object v0, p0, Lcom/sonymobile/home/search/SearchActivity$9;->this$0:Lcom/sonymobile/home/search/SearchActivity;

    # invokes: Lcom/sonymobile/home/search/SearchActivity;->showContainer()V
    invoke-static {v0}, Lcom/sonymobile/home/search/SearchActivity;->access$1900(Lcom/sonymobile/home/search/SearchActivity;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 827
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/search/SearchActivity$9;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
