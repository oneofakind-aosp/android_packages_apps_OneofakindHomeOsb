.class public Lcom/sonymobile/home/stk/StkCommandReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StkCommandReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private handleCommandMessage(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 52
    const-string v4, "STK CMD"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/CatCmdMessage;

    .line 54
    .local v0, "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v4, v5, :cond_1

    .line 58
    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v2

    .line 59
    .local v2, "setupMenu":Lcom/android/internal/telephony/cat/Menu;
    if-eqz v2, :cond_1

    .line 60
    const-string v4, "SLOT_ID"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 62
    .local v3, "simSlotIndex":I
    if-eqz v3, :cond_0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 64
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/sonymobile/home/stk/StkCommandService;

    invoke-direct {v1, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-string v4, "set_up_menu_title"

    iget-object v5, v2, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    const-string v4, "SLOT_ID"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    invoke-static {p1, v1}, Lcom/sonymobile/home/util/HomeUtils;->startServiceSafely(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 71
    .end local v1    # "serviceIntent":Landroid/content/Intent;
    .end local v2    # "setupMenu":Lcom/android/internal/telephony/cat/Menu;
    .end local v3    # "simSlotIndex":I
    :cond_1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 45
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.stk.command"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/stk/StkCommandReceiver;->handleCommandMessage(Landroid/content/Context;Landroid/content/Intent;)V

    .line 48
    :cond_0
    return-void
.end method
