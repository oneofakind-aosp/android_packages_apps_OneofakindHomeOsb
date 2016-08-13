.class Lcom/sonymobile/home/configuration/RemoteConfigurationService$8;
.super Landroid/os/AsyncTask;
.source "RemoteConfigurationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/configuration/RemoteConfigurationService;->restoreVerizonHomeScreen(I)V
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
.field final synthetic this$0:Lcom/sonymobile/home/configuration/RemoteConfigurationService;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/configuration/RemoteConfigurationService;)V
    .locals 0

    .prologue
    .line 485
    iput-object p1, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$8;->this$0:Lcom/sonymobile/home/configuration/RemoteConfigurationService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 485
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/configuration/RemoteConfigurationService$8;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 489
    iget-object v0, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$8;->this$0:Lcom/sonymobile/home/configuration/RemoteConfigurationService;

    # getter for: Lcom/sonymobile/home/configuration/RemoteConfigurationService;->mHomeApplication:Lcom/sonymobile/home/HomeApplication;
    invoke-static {v0}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->access$100(Lcom/sonymobile/home/configuration/RemoteConfigurationService;)Lcom/sonymobile/home/HomeApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/home/HomeApplication;->getPreferences()Lcom/sonymobile/home/configuration/HomePreferences;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/configuration/HomePreferences;->setRestoreCustomizationSync(Z)V

    .line 492
    iget-object v0, p0, Lcom/sonymobile/home/configuration/RemoteConfigurationService$8;->this$0:Lcom/sonymobile/home/configuration/RemoteConfigurationService;

    invoke-virtual {v0}, Lcom/sonymobile/home/configuration/RemoteConfigurationService;->stopSelf()V

    .line 494
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 495
    const/4 v0, 0x0

    return-object v0
.end method
