.class Lcom/sonymobile/home/permissions/WelcomeScreenFragment$1;
.super Ljava/lang/Object;
.source "WelcomeScreenFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/permissions/WelcomeScreenFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/permissions/WelcomeScreenFragment;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/permissions/WelcomeScreenFragment;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/sonymobile/home/permissions/WelcomeScreenFragment$1;->this$0:Lcom/sonymobile/home/permissions/WelcomeScreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 87
    iget-object v2, p0, Lcom/sonymobile/home/permissions/WelcomeScreenFragment$1;->this$0:Lcom/sonymobile/home/permissions/WelcomeScreenFragment;

    # invokes: Lcom/sonymobile/home/permissions/WelcomeScreenFragment;->getListener()Lcom/sonymobile/home/permissions/WelcomeScreenFragment$WelcomeScreenListener;
    invoke-static {v2}, Lcom/sonymobile/home/permissions/WelcomeScreenFragment;->access$000(Lcom/sonymobile/home/permissions/WelcomeScreenFragment;)Lcom/sonymobile/home/permissions/WelcomeScreenFragment$WelcomeScreenListener;

    move-result-object v1

    .line 88
    .local v1, "listener":Lcom/sonymobile/home/permissions/WelcomeScreenFragment$WelcomeScreenListener;
    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0f00d6

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    .line 90
    .local v0, "accepted":Z
    :goto_0
    invoke-interface {v1, v0}, Lcom/sonymobile/home/permissions/WelcomeScreenFragment$WelcomeScreenListener;->onWelcomeScreenFinished(Z)V

    .line 92
    const-string v2, "WelcomeScreen"

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/sonymobile/home/settings/HomeSettingsPreferenceManager;->updateSourceForPersonalizeRecommendations(ZLjava/lang/String;Landroid/content/Context;)V

    .line 96
    .end local v0    # "accepted":Z
    :cond_0
    return-void

    .line 89
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
