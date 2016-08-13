.class Lcom/sonymobile/home/settings/UserSettings$4;
.super Landroid/os/AsyncTask;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/settings/UserSettings;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/sonymobile/home/settings/UserSettings;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/settings/UserSettings;Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 626
    iput-object p1, p0, Lcom/sonymobile/home/settings/UserSettings$4;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    iput-object p2, p0, Lcom/sonymobile/home/settings/UserSettings$4;->val$preferences:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lcom/sonymobile/home/settings/UserSettings$4;->val$key:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 629
    iget-object v0, p0, Lcom/sonymobile/home/settings/UserSettings$4;->val$preferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/sonymobile/home/settings/UserSettings$4;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonymobile/home/settings/UserSettings$4;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mDefaultStraightToDesktopMode:Z
    invoke-static {v2}, Lcom/sonymobile/home/settings/UserSettings;->access$600(Lcom/sonymobile/home/settings/UserSettings;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 626
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/settings/UserSettings$4;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 634
    iget-object v0, p0, Lcom/sonymobile/home/settings/UserSettings$4;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    # invokes: Lcom/sonymobile/home/settings/UserSettings;->setStraightToDesktopMode(Z)V
    invoke-static {v0, v1}, Lcom/sonymobile/home/settings/UserSettings;->access$4300(Lcom/sonymobile/home/settings/UserSettings;Z)V

    .line 635
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 626
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/settings/UserSettings$4;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
