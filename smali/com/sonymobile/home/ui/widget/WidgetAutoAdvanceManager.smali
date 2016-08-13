.class public Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;
.super Ljava/lang/Object;
.source "WidgetAutoAdvanceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager$AutoAdvanceHandler;
    }
.end annotation


# instance fields
.field private mAdvanceDelayLeft:J

.field private final mAutoAdvanceHandler:Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager$AutoAdvanceHandler;

.field private mIsEnabled:Z

.field private mIsRunning:Z

.field private mTimeAdvanceMsgSent:J

.field private final mWidgetsToAdvance:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->mWidgetsToAdvance:Ljava/util/Map;

    .line 58
    iput-boolean v1, p0, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->mIsRunning:Z

    .line 61
    iput-boolean v1, p0, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->mIsEnabled:Z

    .line 67
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->mAdvanceDelayLeft:J

    .line 73
    new-instance v0, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager$AutoAdvanceHandler;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager$AutoAdvanceHandler;-><init>(Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;)V

    iput-object v0, p0, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->mAutoAdvanceHandler:Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager$AutoAdvanceHandler;

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->mWidgetsToAdvance:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;J)V
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;
    .param p1, "x1"    # J

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->sendAdvanceMessage(J)V

    return-void
.end method

.method private sendAdvanceMessage(J)V
    .locals 5
    .param p1, "delay"    # J

    .prologue
    const/4 v2, 0x1

    .line 166
    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->mAutoAdvanceHandler:Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager$AutoAdvanceHandler;

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager$AutoAdvanceHandler;->removeMessages(I)V

    .line 167
    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->mAutoAdvanceHandler:Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager$AutoAdvanceHandler;

    invoke-virtual {v1, v2}, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager$AutoAdvanceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 168
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->mAutoAdvanceHandler:Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager$AutoAdvanceHandler;

    invoke-virtual {v1, v0, p1, p2}, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager$AutoAdvanceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->mTimeAdvanceMsgSent:J

    .line 170
    return-void
.end method

.method private updateRunning()V
    .locals 14

    .prologue
    const-wide/16 v6, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 138
    iget-boolean v5, p0, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->mIsEnabled:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->mWidgetsToAdvance:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    move v2, v3

    .line 139
    .local v2, "isRunning":Z
    :goto_0
    iget-boolean v5, p0, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->mIsRunning:Z

    if-eq v2, v5, :cond_1

    .line 140
    iput-boolean v2, p0, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->mIsRunning:Z

    .line 141
    if-eqz v2, :cond_3

    .line 142
    const-wide/16 v0, 0x4e20

    .line 143
    .local v0, "delay":J
    iget-wide v4, p0, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->mAdvanceDelayLeft:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 144
    iget-wide v0, p0, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->mAdvanceDelayLeft:J

    .line 145
    iput-wide v6, p0, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->mAdvanceDelayLeft:J

    .line 147
    :cond_0
    invoke-direct {p0, v0, v1}, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->sendAdvanceMessage(J)V

    .line 158
    .end local v0    # "delay":J
    :cond_1
    :goto_1
    return-void

    .end local v2    # "isRunning":Z
    :cond_2
    move v2, v4

    .line 138
    goto :goto_0

    .line 149
    .restart local v2    # "isRunning":Z
    :cond_3
    iget-object v5, p0, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->mWidgetsToAdvance:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 150
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x4e20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->mTimeAdvanceMsgSent:J

    sub-long/2addr v10, v12

    sub-long/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->mAdvanceDelayLeft:J

    .line 153
    :cond_4
    iget-object v5, p0, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->mAutoAdvanceHandler:Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager$AutoAdvanceHandler;

    invoke-virtual {v5, v3}, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager$AutoAdvanceHandler;->removeMessages(I)V

    .line 155
    iget-object v3, p0, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->mAutoAdvanceHandler:Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager$AutoAdvanceHandler;

    invoke-virtual {v3, v4}, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager$AutoAdvanceHandler;->removeMessages(I)V

    goto :goto_1
.end method


# virtual methods
.method public addWidgetIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 3
    .param p1, "hostView"    # Landroid/view/View;
    .param p2, "appWidgetInfo"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    .line 101
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 102
    iget v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 103
    .local v0, "advanceView":Landroid/view/View;
    instance-of v1, v0, Landroid/widget/Advanceable;

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->mWidgetsToAdvance:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    check-cast v0, Landroid/widget/Advanceable;

    .end local v0    # "advanceView":Landroid/view/View;
    invoke-interface {v0}, Landroid/widget/Advanceable;->fyiWillBeAdvancedByHostKThx()V

    .line 106
    invoke-direct {p0}, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->updateRunning()V

    .line 109
    :cond_0
    return-void
.end method

.method public enable(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->mIsEnabled:Z

    .line 83
    invoke-direct {p0}, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->updateRunning()V

    .line 84
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->removeAllWidgets()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->mIsEnabled:Z

    .line 92
    return-void
.end method

.method public removeAllWidgets()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->mWidgetsToAdvance:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 128
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->mAutoAdvanceHandler:Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager$AutoAdvanceHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager$AutoAdvanceHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->mIsRunning:Z

    .line 130
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->mAdvanceDelayLeft:J

    .line 131
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->mTimeAdvanceMsgSent:J

    .line 132
    return-void
.end method

.method public removeWidget(Landroid/view/View;)V
    .locals 1
    .param p1, "hostView"    # Landroid/view/View;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->mWidgetsToAdvance:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->mWidgetsToAdvance:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-direct {p0}, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->updateRunning()V

    .line 121
    :cond_0
    return-void
.end method
