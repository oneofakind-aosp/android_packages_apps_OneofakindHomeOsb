.class public Lcom/sonymobile/home/search/suggest/AppMetadataRequester;
.super Ljava/lang/Object;
.source "AppMetadataRequester.java"

# interfaces
.implements Lcom/sonymobile/home/search/suggest/Requester;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;
    }
.end annotation


# static fields
.field private static final REQUEST_PROPERTY_API_KEY_VALUE:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final TIMEOUT:I


# instance fields
.field private final mLocationUtil:Lcom/sonymobile/home/search/suggest/LocationUtil;

.field private mSearchTask:Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;

.field private mShouldRun:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 40
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester;->TIMEOUT:I

    .line 42
    const-class v0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester;->TAG:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/sonymobile/home/search/suggest/ApiConstants;->getKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester;->REQUEST_PROPERTY_API_KEY_VALUE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/sonymobile/home/search/suggest/LocationUtil;

    invoke-direct {v0}, Lcom/sonymobile/home/search/suggest/LocationUtil;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester;->mLocationUtil:Lcom/sonymobile/home/search/suggest/LocationUtil;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/home/search/suggest/AppMetadataRequester;Landroid/content/Context;IZZLcom/sonymobile/home/search/suggest/SuggestionRequestCallback;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sonymobile/home/search/suggest/AppMetadataRequester;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # Lcom/sonymobile/home/search/suggest/SuggestionRequestCallback;
    .param p6, "x6"    # I

    .prologue
    .line 38
    invoke-direct/range {p0 .. p6}, Lcom/sonymobile/home/search/suggest/AppMetadataRequester;->run(Landroid/content/Context;IZZLcom/sonymobile/home/search/suggest/SuggestionRequestCallback;I)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester;->REQUEST_PROPERTY_API_KEY_VALUE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester;->TIMEOUT:I

    return v0
.end method

.method private requestLocationLock(Landroid/content/Context;IZLcom/sonymobile/home/search/suggest/SuggestionRequestCallback;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxRecommendations"    # I
    .param p3, "includeGenres"    # Z
    .param p4, "callback"    # Lcom/sonymobile/home/search/suggest/SuggestionRequestCallback;

    .prologue
    .line 92
    iget-object v6, p0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester;->mLocationUtil:Lcom/sonymobile/home/search/suggest/LocationUtil;

    new-instance v0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$1;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$1;-><init>(Lcom/sonymobile/home/search/suggest/AppMetadataRequester;Landroid/content/Context;IZLcom/sonymobile/home/search/suggest/SuggestionRequestCallback;)V

    invoke-virtual {v6, p1, v0}, Lcom/sonymobile/home/search/suggest/LocationUtil;->getLocationAsync(Landroid/content/Context;Lcom/sonymobile/home/search/suggest/LocationUtil$LocationGetter;)V

    .line 100
    return-void
.end method

.method private run(Landroid/content/Context;IZZLcom/sonymobile/home/search/suggest/SuggestionRequestCallback;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxRecommendations"    # I
    .param p3, "includeLocation"    # Z
    .param p4, "includeGenres"    # Z
    .param p5, "callback"    # Lcom/sonymobile/home/search/suggest/SuggestionRequestCallback;
    .param p6, "page"    # I

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester;->mShouldRun:Z

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;-><init>(Landroid/content/Context;IZZLcom/sonymobile/home/search/suggest/SuggestionRequestCallback;I)V

    iput-object v0, p0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester;->mSearchTask:Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;

    .line 120
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester;->mSearchTask:Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 122
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester;->mShouldRun:Z

    .line 130
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester;->mSearchTask:Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester;->mSearchTask:Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;

    invoke-virtual {v0}, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester;->mSearchTask:Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;->cancel(Z)Z

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester;->mSearchTask:Lcom/sonymobile/home/search/suggest/AppMetadataRequester$SearchTask;

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester;->mLocationUtil:Lcom/sonymobile/home/search/suggest/LocationUtil;

    invoke-virtual {v0}, Lcom/sonymobile/home/search/suggest/LocationUtil;->cancel()V

    .line 135
    return-void
.end method

.method public request(Landroid/content/Context;IZZLcom/sonymobile/home/search/suggest/SuggestionRequestCallback;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "maxRecommendations"    # I
    .param p3, "includeLocation"    # Z
    .param p4, "includeGenres"    # Z
    .param p5, "callback"    # Lcom/sonymobile/home/search/suggest/SuggestionRequestCallback;

    .prologue
    const/4 v3, 0x0

    .line 72
    invoke-virtual {p0}, Lcom/sonymobile/home/search/suggest/AppMetadataRequester;->cancel()V

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester;->mShouldRun:Z

    .line 74
    if-eqz p3, :cond_0

    .line 75
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/sonymobile/home/search/suggest/AppMetadataRequester;->requestLocationLock(Landroid/content/Context;IZLcom/sonymobile/home/search/suggest/SuggestionRequestCallback;)V

    .line 79
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p4

    move-object v5, p5

    move v6, v3

    .line 77
    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/home/search/suggest/AppMetadataRequester;->run(Landroid/content/Context;IZZLcom/sonymobile/home/search/suggest/SuggestionRequestCallback;I)V

    goto :goto_0
.end method
