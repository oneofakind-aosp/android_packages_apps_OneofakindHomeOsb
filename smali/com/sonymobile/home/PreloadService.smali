.class public Lcom/sonymobile/home/PreloadService;
.super Landroid/app/Service;
.source "PreloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/PreloadService$PreloadReceiver;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 29
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/sonymobile/home/PreloadService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/home/HomeApplication;

    .line 36
    .local v0, "homeApplication":Lcom/sonymobile/home/HomeApplication;
    new-instance v1, Lcom/sonymobile/home/PreloadService$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/PreloadService$1;-><init>(Lcom/sonymobile/home/PreloadService;)V

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/HomeApplication;->customize(Lcom/sonymobile/home/HomeApplication$CustomizationListener;)V

    .line 45
    const/4 v1, 0x3

    return v1
.end method
