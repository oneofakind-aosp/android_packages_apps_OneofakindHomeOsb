.class Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;
.super Ljava/lang/Object;
.source "LocationUtil.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "MissingPermission"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/home/search/suggest/LocationUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocationListenerWithTimeout"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mLocationGetter:Lcom/sonymobile/home/search/suggest/LocationUtil$LocationGetter;

.field private final mLocationManager:Landroid/location/LocationManager;

.field private final mTimer:Ljava/util/Timer;

.field private final mTimerTask:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>(Landroid/location/LocationManager;Lcom/sonymobile/home/search/suggest/LocationUtil$LocationGetter;)V
    .locals 4
    .param p1, "manager"    # Landroid/location/LocationManager;
    .param p2, "locationGetter"    # Lcom/sonymobile/home/search/suggest/LocationUtil$LocationGetter;

    .prologue
    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;->mTimer:Ljava/util/Timer;

    .line 205
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;->mHandler:Landroid/os/Handler;

    .line 211
    iput-object p1, p0, Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;->mLocationManager:Landroid/location/LocationManager;

    .line 212
    iput-object p2, p0, Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;->mLocationGetter:Lcom/sonymobile/home/search/suggest/LocationUtil$LocationGetter;

    .line 213
    invoke-direct {p0}, Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;->getTimerTask()Ljava/util/TimerTask;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;->mTimerTask:Ljava/util/TimerTask;

    .line 214
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;->mTimerTask:Ljava/util/TimerTask;

    # getter for: Lcom/sonymobile/home/search/suggest/LocationUtil;->LOCATION_LOCK_TIMEOUT:J
    invoke-static {}, Lcom/sonymobile/home/search/suggest/LocationUtil;->access$100()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 215
    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;)Lcom/sonymobile/home/search/suggest/LocationUtil$LocationGetter;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;->mLocationGetter:Lcom/sonymobile/home/search/suggest/LocationUtil$LocationGetter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method private getTimerTask()Ljava/util/TimerTask;
    .locals 1

    .prologue
    .line 224
    new-instance v0, Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout$1;-><init>(Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;)V

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;->mLocationGetter:Lcom/sonymobile/home/search/suggest/LocationUtil$LocationGetter;

    .line 220
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 221
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;->mLocationGetter:Lcom/sonymobile/home/search/suggest/LocationUtil$LocationGetter;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;->mLocationGetter:Lcom/sonymobile/home/search/suggest/LocationUtil$LocationGetter;

    invoke-interface {v0, p1}, Lcom/sonymobile/home/search/suggest/LocationUtil$LocationGetter;->onLocationReceived(Landroid/location/Location;)V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 257
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 258
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 273
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 268
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 263
    return-void
.end method
