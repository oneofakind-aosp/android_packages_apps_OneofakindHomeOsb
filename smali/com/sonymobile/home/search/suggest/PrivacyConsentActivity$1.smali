.class Lcom/sonymobile/home/search/suggest/PrivacyConsentActivity$1;
.super Landroid/os/AsyncTask;
.source "PrivacyConsentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/search/suggest/PrivacyConsentActivity;->loadPrivacyStatus()V
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
.field final synthetic this$0:Lcom/sonymobile/home/search/suggest/PrivacyConsentActivity;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/search/suggest/PrivacyConsentActivity;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/sonymobile/home/search/suggest/PrivacyConsentActivity$1;->this$0:Lcom/sonymobile/home/search/suggest/PrivacyConsentActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/PrivacyConsentActivity$1;->this$0:Lcom/sonymobile/home/search/suggest/PrivacyConsentActivity;

    invoke-static {v0}, Lcom/sonymobile/home/search/SearchActivity;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "is_privacy_accepted"

    const/4 v2, 0x0

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
    .line 52
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/search/suggest/PrivacyConsentActivity$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "privacyAccepted"    # Ljava/lang/Boolean;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/PrivacyConsentActivity$1;->this$0:Lcom/sonymobile/home/search/suggest/PrivacyConsentActivity;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    # invokes: Lcom/sonymobile/home/search/suggest/PrivacyConsentActivity;->getUserConsentIfNecessary(Z)V
    invoke-static {v0, v1}, Lcom/sonymobile/home/search/suggest/PrivacyConsentActivity;->access$000(Lcom/sonymobile/home/search/suggest/PrivacyConsentActivity;Z)V

    .line 62
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 52
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/search/suggest/PrivacyConsentActivity$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
