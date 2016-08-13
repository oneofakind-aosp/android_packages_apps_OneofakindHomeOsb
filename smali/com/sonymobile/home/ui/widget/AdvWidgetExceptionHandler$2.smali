.class Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler$2;
.super Ljava/lang/Object;
.source "AdvWidgetExceptionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->handleException(Ljava/lang/Exception;Ljava/util/UUID;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;

.field final synthetic val$e:Ljava/lang/Exception;

.field final synthetic val$uuid:Ljava/util/UUID;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;Ljava/lang/Exception;Ljava/util/UUID;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler$2;->this$0:Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;

    iput-object p2, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler$2;->val$e:Ljava/lang/Exception;

    iput-object p3, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler$2;->val$uuid:Ljava/util/UUID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler$2;->this$0:Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;

    iget-object v1, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler$2;->val$e:Ljava/lang/Exception;

    iget-object v2, p0, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler$2;->val$uuid:Ljava/util/UUID;

    # invokes: Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->notifyCaughtException(Ljava/lang/Exception;Ljava/util/UUID;)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;->access$200(Lcom/sonymobile/home/ui/widget/AdvWidgetExceptionHandler;Ljava/lang/Exception;Ljava/util/UUID;)V

    .line 265
    return-void
.end method
