.class Lcom/sonymobile/home/configuration/HomePreferences$1;
.super Landroid/os/AsyncTask;
.source "HomePreferences.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/configuration/HomePreferences;->load()V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/configuration/HomePreferences;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/configuration/HomePreferences;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/sonymobile/home/configuration/HomePreferences$1;->this$0:Lcom/sonymobile/home/configuration/HomePreferences;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 41
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/configuration/HomePreferences$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/sonymobile/home/configuration/HomePreferences$1;->this$0:Lcom/sonymobile/home/configuration/HomePreferences;

    iget-object v1, p0, Lcom/sonymobile/home/configuration/HomePreferences$1;->this$0:Lcom/sonymobile/home/configuration/HomePreferences;

    # getter for: Lcom/sonymobile/home/configuration/HomePreferences;->mPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/sonymobile/home/configuration/HomePreferences;->access$100(Lcom/sonymobile/home/configuration/HomePreferences;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "restore_customization"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    # setter for: Lcom/sonymobile/home/configuration/HomePreferences;->mRestoreCustomization:Z
    invoke-static {v0, v1}, Lcom/sonymobile/home/configuration/HomePreferences;->access$002(Lcom/sonymobile/home/configuration/HomePreferences;Z)Z

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 41
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/configuration/HomePreferences$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 51
    iget-object v2, p0, Lcom/sonymobile/home/configuration/HomePreferences$1;->this$0:Lcom/sonymobile/home/configuration/HomePreferences;

    const/4 v3, 0x1

    # setter for: Lcom/sonymobile/home/configuration/HomePreferences;->mLoadingDone:Z
    invoke-static {v2, v3}, Lcom/sonymobile/home/configuration/HomePreferences;->access$202(Lcom/sonymobile/home/configuration/HomePreferences;Z)Z

    .line 52
    iget-object v2, p0, Lcom/sonymobile/home/configuration/HomePreferences$1;->this$0:Lcom/sonymobile/home/configuration/HomePreferences;

    # getter for: Lcom/sonymobile/home/configuration/HomePreferences;->mOnPreferencesLoadedListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sonymobile/home/configuration/HomePreferences;->access$300(Lcom/sonymobile/home/configuration/HomePreferences;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/home/configuration/HomePreferences$OnPreferencesLoadedListener;

    .line 53
    .local v1, "listener":Lcom/sonymobile/home/configuration/HomePreferences$OnPreferencesLoadedListener;
    iget-object v2, p0, Lcom/sonymobile/home/configuration/HomePreferences$1;->this$0:Lcom/sonymobile/home/configuration/HomePreferences;

    invoke-interface {v1, v2}, Lcom/sonymobile/home/configuration/HomePreferences$OnPreferencesLoadedListener;->onPreferencesLoaded(Lcom/sonymobile/home/configuration/HomePreferences;)V

    goto :goto_0

    .line 55
    .end local v1    # "listener":Lcom/sonymobile/home/configuration/HomePreferences$OnPreferencesLoadedListener;
    :cond_0
    iget-object v2, p0, Lcom/sonymobile/home/configuration/HomePreferences$1;->this$0:Lcom/sonymobile/home/configuration/HomePreferences;

    # getter for: Lcom/sonymobile/home/configuration/HomePreferences;->mOnPreferencesLoadedListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/sonymobile/home/configuration/HomePreferences;->access$300(Lcom/sonymobile/home/configuration/HomePreferences;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 56
    return-void
.end method
