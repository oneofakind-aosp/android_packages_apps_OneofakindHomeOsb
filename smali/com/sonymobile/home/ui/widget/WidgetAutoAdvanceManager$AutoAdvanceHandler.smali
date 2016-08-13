.class Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager$AutoAdvanceHandler;
.super Landroid/os/Handler;
.source "WidgetAutoAdvanceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AutoAdvanceHandler"
.end annotation


# instance fields
.field private final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;)V
    .locals 1
    .param p1, "manager"    # Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;

    .prologue
    .line 179
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 180
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager$AutoAdvanceHandler;->mManager:Ljava/lang/ref/WeakReference;

    .line 181
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 186
    iget-object v9, p0, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager$AutoAdvanceHandler;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;

    .line 188
    .local v8, "manager":Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;
    iget v9, p1, Landroid/os/Message;->what:I

    packed-switch v9, :pswitch_data_0

    .line 211
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 214
    :goto_0
    return-void

    .line 191
    :pswitch_0
    const/4 v3, 0x0

    .line 192
    .local v3, "delayFactor":I
    # getter for: Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->mWidgetsToAdvance:Ljava/util/Map;
    invoke-static {v8}, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->access$000(Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 193
    .local v6, "hostView":Landroid/view/View;
    # getter for: Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->mWidgetsToAdvance:Ljava/util/Map;
    invoke-static {v8}, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->access$000(Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/appwidget/AppWidgetProviderInfo;

    iget v1, v9, Landroid/appwidget/AppWidgetProviderInfo;->autoAdvanceViewId:I

    .line 194
    .local v1, "advanceViewId":I
    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 195
    .local v0, "advanceView":Landroid/view/View;
    const-wide/16 v10, 0xfa

    int-to-long v12, v3

    mul-long v4, v10, v12

    .line 196
    .local v4, "delay":J
    instance-of v9, v0, Landroid/widget/Advanceable;

    if-eqz v9, :cond_0

    move-object v2, v0

    .line 197
    check-cast v2, Landroid/widget/Advanceable;

    .line 198
    .local v2, "castAdvanceableView":Landroid/widget/Advanceable;
    new-instance v9, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager$AutoAdvanceHandler$1;

    invoke-direct {v9, p0, v2}, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager$AutoAdvanceHandler$1;-><init>(Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager$AutoAdvanceHandler;Landroid/widget/Advanceable;)V

    invoke-virtual {p0, v9, v4, v5}, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager$AutoAdvanceHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 205
    .end local v2    # "castAdvanceableView":Landroid/widget/Advanceable;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 206
    goto :goto_1

    .line 207
    .end local v0    # "advanceView":Landroid/view/View;
    .end local v1    # "advanceViewId":I
    .end local v4    # "delay":J
    .end local v6    # "hostView":Landroid/view/View;
    :cond_1
    const-wide/16 v10, 0x4e20

    # invokes: Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->sendAdvanceMessage(J)V
    invoke-static {v8, v10, v11}, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;->access$100(Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager;J)V

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
