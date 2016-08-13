.class Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager$AutoAdvanceHandler$1;
.super Ljava/lang/Object;
.source "WidgetAutoAdvanceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager$AutoAdvanceHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager$AutoAdvanceHandler;

.field final synthetic val$castAdvanceableView:Landroid/widget/Advanceable;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager$AutoAdvanceHandler;Landroid/widget/Advanceable;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager$AutoAdvanceHandler$1;->this$0:Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager$AutoAdvanceHandler;

    iput-object p2, p0, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager$AutoAdvanceHandler$1;->val$castAdvanceableView:Landroid/widget/Advanceable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/WidgetAutoAdvanceManager$AutoAdvanceHandler$1;->val$castAdvanceableView:Landroid/widget/Advanceable;

    invoke-interface {v0}, Landroid/widget/Advanceable;->advance()V

    .line 202
    return-void
.end method
