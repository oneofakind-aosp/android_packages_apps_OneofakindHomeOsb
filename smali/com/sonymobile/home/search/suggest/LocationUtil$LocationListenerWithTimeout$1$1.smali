.class Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout$1$1;
.super Ljava/lang/Object;
.source "LocationUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout$1;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout$1;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout$1$1;->this$1:Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout$1$1;->this$1:Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout$1;

    iget-object v0, v0, Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout$1;->this$0:Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;

    # getter for: Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;->mLocationGetter:Lcom/sonymobile/home/search/suggest/LocationUtil$LocationGetter;
    invoke-static {v0}, Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;->access$200(Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;)Lcom/sonymobile/home/search/suggest/LocationUtil$LocationGetter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout$1$1;->this$1:Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout$1;

    iget-object v0, v0, Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout$1;->this$0:Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;

    # getter for: Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;->mLocationGetter:Lcom/sonymobile/home/search/suggest/LocationUtil$LocationGetter;
    invoke-static {v0}, Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;->access$200(Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;)Lcom/sonymobile/home/search/suggest/LocationUtil$LocationGetter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sonymobile/home/search/suggest/LocationUtil$LocationGetter;->onLocationReceived(Landroid/location/Location;)V

    .line 238
    :cond_0
    return-void
.end method
