.class Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout$1;
.super Ljava/util/TimerTask;
.source "LocationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;->getTimerTask()Ljava/util/TimerTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout$1;->this$0:Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout$1;->this$0:Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;

    # getter for: Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;->access$300(Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout$1$1;

    invoke-direct {v1, p0}, Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout$1$1;-><init>(Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 241
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout$1;->this$0:Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;

    # getter for: Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;->access$400(Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout$1;->this$0:Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 242
    return-void
.end method
