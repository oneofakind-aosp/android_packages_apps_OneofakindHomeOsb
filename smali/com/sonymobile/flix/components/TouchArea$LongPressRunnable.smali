.class public Lcom/sonymobile/flix/components/TouchArea$LongPressRunnable;
.super Ljava/lang/Object;
.source "TouchArea.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/flix/components/TouchArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LongPressRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/flix/components/TouchArea;


# direct methods
.method protected constructor <init>(Lcom/sonymobile/flix/components/TouchArea;)V
    .locals 0

    .prologue
    .line 876
    iput-object p1, p0, Lcom/sonymobile/flix/components/TouchArea$LongPressRunnable;->this$0:Lcom/sonymobile/flix/components/TouchArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 879
    iget-object v0, p0, Lcom/sonymobile/flix/components/TouchArea$LongPressRunnable;->this$0:Lcom/sonymobile/flix/components/TouchArea;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/sonymobile/flix/components/TouchArea$LongPressRunnable;->this$0:Lcom/sonymobile/flix/components/TouchArea;

    iget-boolean v2, v2, Lcom/sonymobile/flix/components/TouchArea;->mTouchingInside:Z

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/flix/components/TouchArea;->notifyTouch(IZLandroid/view/MotionEvent;)Z

    .line 880
    return-void
.end method
