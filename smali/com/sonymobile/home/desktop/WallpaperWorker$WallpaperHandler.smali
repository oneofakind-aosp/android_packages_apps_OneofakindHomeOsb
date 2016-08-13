.class Lcom/sonymobile/home/desktop/WallpaperWorker$WallpaperHandler;
.super Landroid/os/Handler;
.source "WallpaperWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/desktop/WallpaperWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WallpaperHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/desktop/WallpaperWorker;


# direct methods
.method public constructor <init>(Lcom/sonymobile/home/desktop/WallpaperWorker;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/sonymobile/home/desktop/WallpaperWorker$WallpaperHandler;->this$0:Lcom/sonymobile/home/desktop/WallpaperWorker;

    .line 284
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 285
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 292
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 310
    # getter for: Lcom/sonymobile/home/desktop/WallpaperWorker;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/home/desktop/WallpaperWorker;->access$500()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message sent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :goto_0
    return-void

    .line 294
    :pswitch_0
    iget-object v0, p0, Lcom/sonymobile/home/desktop/WallpaperWorker$WallpaperHandler;->this$0:Lcom/sonymobile/home/desktop/WallpaperWorker;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    # invokes: Lcom/sonymobile/home/desktop/WallpaperWorker;->handleSetOffset(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/sonymobile/home/desktop/WallpaperWorker;->access$100(Lcom/sonymobile/home/desktop/WallpaperWorker;Ljava/lang/Object;)V

    goto :goto_0

    .line 298
    :pswitch_1
    iget-object v0, p0, Lcom/sonymobile/home/desktop/WallpaperWorker$WallpaperHandler;->this$0:Lcom/sonymobile/home/desktop/WallpaperWorker;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    # invokes: Lcom/sonymobile/home/desktop/WallpaperWorker;->handleSetOffsetStep(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/sonymobile/home/desktop/WallpaperWorker;->access$200(Lcom/sonymobile/home/desktop/WallpaperWorker;Ljava/lang/Object;)V

    goto :goto_0

    .line 302
    :pswitch_2
    iget-object v0, p0, Lcom/sonymobile/home/desktop/WallpaperWorker$WallpaperHandler;->this$0:Lcom/sonymobile/home/desktop/WallpaperWorker;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    # invokes: Lcom/sonymobile/home/desktop/WallpaperWorker;->handleCommand(Ljava/lang/Object;)V
    invoke-static {v0, v1}, Lcom/sonymobile/home/desktop/WallpaperWorker;->access$300(Lcom/sonymobile/home/desktop/WallpaperWorker;Ljava/lang/Object;)V

    goto :goto_0

    .line 306
    :pswitch_3
    iget-object v0, p0, Lcom/sonymobile/home/desktop/WallpaperWorker$WallpaperHandler;->this$0:Lcom/sonymobile/home/desktop/WallpaperWorker;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/sonymobile/home/desktop/WallpaperWorker;->handleSuggestDesiredDimensions(II)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/home/desktop/WallpaperWorker;->access$400(Lcom/sonymobile/home/desktop/WallpaperWorker;II)V

    goto :goto_0

    .line 292
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
