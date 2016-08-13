.class public Lcom/sonymobile/home/HomeFragment$TestModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TestModeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/HomeFragment;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/HomeFragment;)V
    .locals 0

    .prologue
    .line 1098
    iput-object p1, p0, Lcom/sonymobile/home/HomeFragment$TestModeReceiver;->this$0:Lcom/sonymobile/home/HomeFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 1101
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const/4 v1, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 1121
    :cond_1
    :goto_1
    return-void

    .line 1101
    :sswitch_0
    const-string v4, "com.sonymobile.home.action.TEST_MODE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v4, "com.sonymobile.home.action.PRINT_SCENE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    .line 1103
    :pswitch_0
    invoke-static {}, Lcom/sonymobile/home/HomeFragment;->setTestMode()V

    .line 1104
    iget-object v1, p0, Lcom/sonymobile/home/HomeFragment$TestModeReceiver;->this$0:Lcom/sonymobile/home/HomeFragment;

    # getter for: Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;
    invoke-static {v1}, Lcom/sonymobile/home/HomeFragment;->access$1100(Lcom/sonymobile/home/HomeFragment;)Lcom/sonymobile/home/MainView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sonymobile/home/HomeFragment$TestModeReceiver;->this$0:Lcom/sonymobile/home/HomeFragment;

    # getter for: Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;
    invoke-static {v1}, Lcom/sonymobile/home/HomeFragment;->access$1100(Lcom/sonymobile/home/HomeFragment;)Lcom/sonymobile/home/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/MainView;->isProxyViewTestingSetup()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1105
    iget-object v1, p0, Lcom/sonymobile/home/HomeFragment$TestModeReceiver;->this$0:Lcom/sonymobile/home/HomeFragment;

    # getter for: Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;
    invoke-static {v1}, Lcom/sonymobile/home/HomeFragment;->access$1100(Lcom/sonymobile/home/HomeFragment;)Lcom/sonymobile/home/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/MainView;->setupProxyViewTesting()V

    goto :goto_1

    .line 1110
    :pswitch_1
    iget-object v1, p0, Lcom/sonymobile/home/HomeFragment$TestModeReceiver;->this$0:Lcom/sonymobile/home/HomeFragment;

    # getter for: Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;
    invoke-static {v1}, Lcom/sonymobile/home/HomeFragment;->access$1100(Lcom/sonymobile/home/HomeFragment;)Lcom/sonymobile/home/MainView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1111
    iget-object v1, p0, Lcom/sonymobile/home/HomeFragment$TestModeReceiver;->this$0:Lcom/sonymobile/home/HomeFragment;

    # getter for: Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;
    invoke-static {v1}, Lcom/sonymobile/home/HomeFragment;->access$1100(Lcom/sonymobile/home/HomeFragment;)Lcom/sonymobile/home/MainView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/home/MainView;->getScene()Lcom/sonymobile/flix/components/Scene;

    move-result-object v0

    .line 1112
    .local v0, "scene":Lcom/sonymobile/flix/components/Scene;
    if-eqz v0, :cond_1

    .line 1113
    invoke-static {v0, v2}, Lcom/sonymobile/flix/components/ComponentDebug;->printTree(Lcom/sonymobile/flix/components/Component;Z)V

    goto :goto_1

    .line 1101
    :sswitch_data_0
    .sparse-switch
        0x1b3b3719 -> :sswitch_1
        0x77fbbbcf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
