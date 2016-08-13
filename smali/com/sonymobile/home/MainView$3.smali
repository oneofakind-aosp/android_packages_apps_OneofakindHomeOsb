.class Lcom/sonymobile/home/MainView$3;
.super Ljava/lang/Object;
.source "MainView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/MainView;->onSizeChanged(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/MainView;

.field final synthetic val$height:I

.field final synthetic val$oldHeight:I

.field final synthetic val$oldWidth:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/sonymobile/home/MainView;IIII)V
    .locals 0

    .prologue
    .line 688
    iput-object p1, p0, Lcom/sonymobile/home/MainView$3;->this$0:Lcom/sonymobile/home/MainView;

    iput p2, p0, Lcom/sonymobile/home/MainView$3;->val$width:I

    iput p3, p0, Lcom/sonymobile/home/MainView$3;->val$height:I

    iput p4, p0, Lcom/sonymobile/home/MainView$3;->val$oldWidth:I

    iput p5, p0, Lcom/sonymobile/home/MainView$3;->val$oldHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 691
    iget-object v0, p0, Lcom/sonymobile/home/MainView$3;->this$0:Lcom/sonymobile/home/MainView;

    const/4 v1, 0x0

    # setter for: Lcom/sonymobile/home/MainView;->mOnSizeChangedRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/sonymobile/home/MainView;->access$002(Lcom/sonymobile/home/MainView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 692
    # getter for: Lcom/sonymobile/home/MainView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/home/MainView;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delayed onSizeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/home/MainView$3;->val$width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sonymobile/home/MainView$3;->val$height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v0, p0, Lcom/sonymobile/home/MainView$3;->this$0:Lcom/sonymobile/home/MainView;

    iget v1, p0, Lcom/sonymobile/home/MainView$3;->val$width:I

    iget v2, p0, Lcom/sonymobile/home/MainView$3;->val$height:I

    iget v3, p0, Lcom/sonymobile/home/MainView$3;->val$oldWidth:I

    iget v4, p0, Lcom/sonymobile/home/MainView$3;->val$oldHeight:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sonymobile/home/MainView;->onSizeChanged(IIII)V

    .line 694
    return-void
.end method
