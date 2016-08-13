.class public Lcom/sonymobile/home/stk/StkCommandService;
.super Landroid/app/IntentService;
.source "StkCommandService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/sonymobile/home/stk/StkCommandService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonymobile/home/stk/StkCommandService;-><init>(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/home/stk/StkCommandService;->setIntentRedelivery(Z)V

    .line 38
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 56
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 42
    if-eqz p1, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/sonymobile/home/stk/StkCommandService;->getApplication()Landroid/app/Application;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/home/HomeApplication;

    invoke-virtual {v3}, Lcom/sonymobile/home/HomeApplication;->getStkManager()Lcom/sonymobile/home/stk/StkManager;

    move-result-object v2

    .line 44
    .local v2, "stkManager":Lcom/sonymobile/home/stk/StkManager;
    const-string v3, "set_up_menu_title"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "setupMenuTitle":Ljava/lang/String;
    const-string v3, "SLOT_ID"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 49
    .local v1, "simSlotIndex":I
    invoke-virtual {v2, v0, v1}, Lcom/sonymobile/home/stk/StkManager;->storeSetUpMenuTitle(Ljava/lang/String;I)V

    .line 51
    .end local v0    # "setupMenuTitle":Ljava/lang/String;
    .end local v1    # "simSlotIndex":I
    .end local v2    # "stkManager":Lcom/sonymobile/home/stk/StkManager;
    :cond_0
    return-void
.end method
