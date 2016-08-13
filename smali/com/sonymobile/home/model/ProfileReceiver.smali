.class public Lcom/sonymobile/home/model/ProfileReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProfileReceiver.java"


# instance fields
.field private final mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/model/PackageHandler;)V
    .locals 2
    .param p1, "packageHandler"    # Lcom/sonymobile/home/model/PackageHandler;

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 24
    if-nez p1, :cond_0

    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null not allowed for packageHandler"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/home/model/ProfileReceiver;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    .line 28
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 32
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "action":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 51
    :cond_1
    :goto_1
    return-void

    .line 34
    :sswitch_0
    const-string v3, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .line 36
    :pswitch_0
    const-string v2, "android.intent.extra.USER"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 37
    .local v1, "userHandle":Landroid/os/UserHandle;
    if-eqz v1, :cond_1

    .line 38
    iget-object v2, p0, Lcom/sonymobile/home/model/ProfileReceiver;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v2, v1}, Lcom/sonymobile/home/model/PackageHandler;->profileAdded(Landroid/os/UserHandle;)V

    goto :goto_1

    .line 42
    .end local v1    # "userHandle":Landroid/os/UserHandle;
    :pswitch_1
    const-string v2, "android.intent.extra.USER"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 43
    .restart local v1    # "userHandle":Landroid/os/UserHandle;
    if-eqz v1, :cond_1

    .line 44
    iget-object v2, p0, Lcom/sonymobile/home/model/ProfileReceiver;->mPackageHandler:Lcom/sonymobile/home/model/PackageHandler;

    invoke-virtual {v2, v1}, Lcom/sonymobile/home/model/PackageHandler;->profileRemoved(Landroid/os/UserHandle;)V

    goto :goto_1

    .line 34
    :sswitch_data_0
    .sparse-switch
        -0x16fbb1bb -> :sswitch_0
        0x3eac4465 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
