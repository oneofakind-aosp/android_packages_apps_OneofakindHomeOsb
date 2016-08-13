.class Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler$1;
.super Ljava/lang/Object;
.source "AdvWidgetExceptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;

.field final synthetic val$ex:Ljava/lang/Throwable;

.field final synthetic val$thread:Ljava/lang/Thread;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;Ljava/lang/Throwable;Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler$1;->this$0:Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;

    iput-object p2, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler$1;->val$ex:Ljava/lang/Throwable;

    iput-object p3, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler$1;->val$thread:Ljava/lang/Thread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 111
    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler$1;->this$0:Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;

    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler$1;->val$ex:Ljava/lang/Throwable;

    check-cast v0, Ljava/lang/Exception;

    # invokes: Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->notifyUncaughtException(Ljava/lang/Exception;)V
    invoke-static {v1, v0}, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->access$000(Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;Ljava/lang/Exception;)V

    .line 113
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler$1;->this$0:Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;

    # getter for: Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->mDefaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;
    invoke-static {v0}, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->access$100(Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler$1;->val$thread:Ljava/lang/Thread;

    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler$1;->val$ex:Ljava/lang/Throwable;

    invoke-interface {v0, v1, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 114
    return-void
.end method
