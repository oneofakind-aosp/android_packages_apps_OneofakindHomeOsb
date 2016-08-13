.class public Lcom/sonymobile/home/BootCompletedService$BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootCompletedService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/BootCompletedService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BootCompletedReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 61
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonymobile/home/BootCompletedService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    .local v0, "serviceIntent":Landroid/content/Intent;
    invoke-static {p1, v0}, Lcom/sonymobile/home/util/HomeUtils;->startServiceSafely(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 65
    .end local v0    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
