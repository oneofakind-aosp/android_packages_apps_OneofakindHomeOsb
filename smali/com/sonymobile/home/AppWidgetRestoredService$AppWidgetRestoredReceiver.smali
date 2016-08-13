.class public Lcom/sonymobile/home/AppWidgetRestoredService$AppWidgetRestoredReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AppWidgetRestoredService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/AppWidgetRestoredService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppWidgetRestoredReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 133
    const-string v2, "hostId"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 134
    .local v0, "hostId":I
    const v2, 0xa3d9739

    if-ne v0, v2, :cond_0

    .line 135
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/sonymobile/home/AppWidgetRestoredService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    .local v1, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {v1, p2}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 137
    invoke-static {p1, v1}, Lcom/sonymobile/home/util/HomeUtils;->startServiceSafely(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 139
    .end local v1    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
