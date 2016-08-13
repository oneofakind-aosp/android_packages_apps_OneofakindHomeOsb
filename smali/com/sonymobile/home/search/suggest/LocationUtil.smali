.class public Lcom/sonymobile/home/search/suggest/LocationUtil;
.super Ljava/lang/Object;
.source "LocationUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;,
        Lcom/sonymobile/home/search/suggest/LocationUtil$LocationGetter;
    }
.end annotation


# static fields
.field private static final LOCATION_LOCK_TIMEOUT:J

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mListener:Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 34
    const-class v0, Lcom/sonymobile/home/search/suggest/LocationUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/search/suggest/LocationUtil;->TAG:Ljava/lang/String;

    .line 37
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/sonymobile/home/search/suggest/LocationUtil;->LOCATION_LOCK_TIMEOUT:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/search/suggest/LocationUtil;Landroid/content/Context;Lcom/sonymobile/home/search/suggest/LocationUtil$LocationGetter;)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/search/suggest/LocationUtil;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/sonymobile/home/search/suggest/LocationUtil$LocationGetter;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/home/search/suggest/LocationUtil;->registerForLocationUpdates(Landroid/content/Context;Lcom/sonymobile/home/search/suggest/LocationUtil$LocationGetter;)V

    return-void
.end method

.method static synthetic access$100()J
    .locals 2

    .prologue
    .line 32
    sget-wide v0, Lcom/sonymobile/home/search/suggest/LocationUtil;->LOCATION_LOCK_TIMEOUT:J

    return-wide v0
.end method

.method private static compareLocations(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;
    .locals 4
    .param p0, "location1"    # Landroid/location/Location;
    .param p1, "location2"    # Landroid/location/Location;

    .prologue
    .line 182
    if-nez p0, :cond_1

    .line 191
    .end local p1    # "location2":Landroid/location/Location;
    :cond_0
    :goto_0
    return-object p1

    .line 184
    .restart local p1    # "location2":Landroid/location/Location;
    :cond_1
    if-nez p1, :cond_2

    move-object p1, p0

    .line 185
    goto :goto_0

    .line 188
    :cond_2
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    move-object p1, p0

    .line 189
    goto :goto_0
.end method

.method private static getBestProvider(Landroid/location/LocationManager;)Ljava/lang/String;
    .locals 2
    .param p0, "locationManager"    # Landroid/location/LocationManager;

    .prologue
    .line 165
    const-string v1, "network"

    invoke-virtual {p0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    const-string v0, "network"

    .line 170
    .local v0, "provider":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 168
    .end local v0    # "provider":Ljava/lang/String;
    :cond_0
    const-string v0, "gps"

    .restart local v0    # "provider":Ljava/lang/String;
    goto :goto_0
.end method

.method private static getLocationManager(Landroid/content/Context;)Landroid/location/LocationManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    return-object v0
.end method

.method public static getLocationSync(Landroid/content/Context;)Landroid/location/Location;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 91
    invoke-static {p0}, Lcom/sonymobile/home/search/suggest/LocationUtil;->getLocationManager(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object v1

    .line 93
    .local v1, "locationManager":Landroid/location/LocationManager;
    const-string v3, "network"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    .line 95
    .local v2, "networkLocation":Landroid/location/Location;
    const-string v3, "gps"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 97
    .local v0, "gpsLocation":Landroid/location/Location;
    invoke-static {v2, v0}, Lcom/sonymobile/home/search/suggest/LocationUtil;->compareLocations(Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    move-result-object v3

    return-object v3
.end method

.method public static hasLocationPermission(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPositioningServiceEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-static {p0}, Lcom/sonymobile/home/search/suggest/LocationUtil;->getLocationManager(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object v1

    .line 63
    .local v1, "locationManager":Landroid/location/LocationManager;
    const-string v3, "gps"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 64
    .local v0, "gpsEnabled":Z
    const-string v3, "network"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    .line 67
    .local v2, "networkEnabled":Z
    if-nez v0, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private registerForLocationUpdates(Landroid/content/Context;Lcom/sonymobile/home/search/suggest/LocationUtil$LocationGetter;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationGetter"    # Lcom/sonymobile/home/search/suggest/LocationUtil$LocationGetter;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .prologue
    .line 134
    invoke-static {p1}, Lcom/sonymobile/home/search/suggest/LocationUtil;->getLocationManager(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object v0

    .line 136
    .local v0, "locationManager":Landroid/location/LocationManager;
    new-instance v2, Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;

    invoke-direct {v2, v0, p2}, Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;-><init>(Landroid/location/LocationManager;Lcom/sonymobile/home/search/suggest/LocationUtil$LocationGetter;)V

    iput-object v2, p0, Lcom/sonymobile/home/search/suggest/LocationUtil;->mListener:Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;

    .line 138
    invoke-static {v0}, Lcom/sonymobile/home/search/suggest/LocationUtil;->getBestProvider(Landroid/location/LocationManager;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "provider":Ljava/lang/String;
    iget-object v2, p0, Lcom/sonymobile/home/search/suggest/LocationUtil;->mListener:Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 144
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/LocationUtil;->mListener:Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/LocationUtil;->mListener:Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;

    invoke-virtual {v0}, Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;->cancel()V

    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/search/suggest/LocationUtil;->mListener:Lcom/sonymobile/home/search/suggest/LocationUtil$LocationListenerWithTimeout;

    .line 154
    :cond_0
    return-void
.end method

.method public getLocationAsync(Landroid/content/Context;Lcom/sonymobile/home/search/suggest/LocationUtil$LocationGetter;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationGetter"    # Lcom/sonymobile/home/search/suggest/LocationUtil$LocationGetter;

    .prologue
    .line 107
    new-instance v0, Lcom/sonymobile/home/search/suggest/LocationUtil$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonymobile/home/search/suggest/LocationUtil$1;-><init>(Lcom/sonymobile/home/search/suggest/LocationUtil;Landroid/content/Context;Lcom/sonymobile/home/search/suggest/LocationUtil$LocationGetter;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/search/suggest/LocationUtil$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 122
    return-void
.end method
