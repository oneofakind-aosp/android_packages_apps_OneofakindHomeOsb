.class Lcom/sonymobile/home/settings/UserSettings$9;
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
        "Lcom/sonymobile/home/iconpacks/IconPack;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/settings/UserSettings;

.field final synthetic val$preferences:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/settings/UserSettings;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 725
    iput-object p1, p0, Lcom/sonymobile/home/settings/UserSettings$9;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    iput-object p2, p0, Lcom/sonymobile/home/settings/UserSettings$9;->val$preferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/sonymobile/home/iconpacks/IconPack;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 728
    iget-object v2, p0, Lcom/sonymobile/home/settings/UserSettings$9;->val$preferences:Landroid/content/SharedPreferences;

    const-string v3, "current_icon_pack"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 730
    .local v1, "packageName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 731
    .local v0, "iconPack":Lcom/sonymobile/home/iconpacks/IconPack;
    if-eqz v1, :cond_0

    .line 732
    iget-object v2, p0, Lcom/sonymobile/home/settings/UserSettings$9;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/sonymobile/home/settings/UserSettings;->access$000(Lcom/sonymobile/home/settings/UserSettings;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/home/settings/UserSettings$9;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # getter for: Lcom/sonymobile/home/settings/UserSettings;->mIconSize:I
    invoke-static {v3}, Lcom/sonymobile/home/settings/UserSettings;->access$2600(Lcom/sonymobile/home/settings/UserSettings;)I

    move-result v3

    invoke-static {v2, v1, v3}, Lcom/sonymobile/home/iconpacks/IconPack;->load(Landroid/content/Context;Ljava/lang/String;I)Lcom/sonymobile/home/iconpacks/IconPack;

    move-result-object v0

    .line 735
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 725
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/settings/UserSettings$9;->doInBackground([Ljava/lang/Void;)Lcom/sonymobile/home/iconpacks/IconPack;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/sonymobile/home/iconpacks/IconPack;)V
    .locals 1
    .param p1, "iconPack"    # Lcom/sonymobile/home/iconpacks/IconPack;

    .prologue
    .line 741
    iget-object v0, p0, Lcom/sonymobile/home/settings/UserSettings$9;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # setter for: Lcom/sonymobile/home/settings/UserSettings;->mIconPack:Lcom/sonymobile/home/iconpacks/IconPack;
    invoke-static {v0, p1}, Lcom/sonymobile/home/settings/UserSettings;->access$3802(Lcom/sonymobile/home/settings/UserSettings;Lcom/sonymobile/home/iconpacks/IconPack;)Lcom/sonymobile/home/iconpacks/IconPack;

    .line 742
    iget-object v0, p0, Lcom/sonymobile/home/settings/UserSettings$9;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # invokes: Lcom/sonymobile/home/settings/UserSettings;->clearIconCaches()V
    invoke-static {v0}, Lcom/sonymobile/home/settings/UserSettings;->access$3900(Lcom/sonymobile/home/settings/UserSettings;)V

    .line 743
    iget-object v0, p0, Lcom/sonymobile/home/settings/UserSettings$9;->this$0:Lcom/sonymobile/home/settings/UserSettings;

    # invokes: Lcom/sonymobile/home/settings/UserSettings;->notifyIconPackChanged()V
    invoke-static {v0}, Lcom/sonymobile/home/settings/UserSettings;->access$4000(Lcom/sonymobile/home/settings/UserSettings;)V

    .line 744
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 725
    check-cast p1, Lcom/sonymobile/home/iconpacks/IconPack;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/settings/UserSettings$9;->onPostExecute(Lcom/sonymobile/home/iconpacks/IconPack;)V

    return-void
.end method
