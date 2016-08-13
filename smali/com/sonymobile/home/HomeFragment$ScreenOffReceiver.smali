.class Lcom/sonymobile/home/HomeFragment$ScreenOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HomeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/HomeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenOffReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/HomeFragment;


# direct methods
.method private constructor <init>(Lcom/sonymobile/home/HomeFragment;)V
    .locals 0

    .prologue
    .line 1127
    iput-object p1, p0, Lcom/sonymobile/home/HomeFragment$ScreenOffReceiver;->this$0:Lcom/sonymobile/home/HomeFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/home/HomeFragment;Lcom/sonymobile/home/HomeFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sonymobile/home/HomeFragment;
    .param p2, "x1"    # Lcom/sonymobile/home/HomeFragment$1;

    .prologue
    .line 1127
    invoke-direct {p0, p1}, Lcom/sonymobile/home/HomeFragment$ScreenOffReceiver;-><init>(Lcom/sonymobile/home/HomeFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1131
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1132
    iget-object v0, p0, Lcom/sonymobile/home/HomeFragment$ScreenOffReceiver;->this$0:Lcom/sonymobile/home/HomeFragment;

    # getter for: Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;
    invoke-static {v0}, Lcom/sonymobile/home/HomeFragment;->access$1100(Lcom/sonymobile/home/HomeFragment;)Lcom/sonymobile/home/MainView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1133
    iget-object v0, p0, Lcom/sonymobile/home/HomeFragment$ScreenOffReceiver;->this$0:Lcom/sonymobile/home/HomeFragment;

    # getter for: Lcom/sonymobile/home/HomeFragment;->mMainView:Lcom/sonymobile/home/MainView;
    invoke-static {v0}, Lcom/sonymobile/home/HomeFragment;->access$1100(Lcom/sonymobile/home/HomeFragment;)Lcom/sonymobile/home/MainView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/MainView;->onScreenOff()V

    .line 1136
    :cond_0
    return-void
.end method
