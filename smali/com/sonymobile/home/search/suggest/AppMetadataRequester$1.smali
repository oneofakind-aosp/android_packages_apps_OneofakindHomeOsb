.class Lcom/sonymobile/home/search/suggest/AppMetadataRequester$1;
.super Ljava/lang/Object;
.source "AppMetadataRequester.java"

# interfaces
.implements Lcom/sonymobile/home/search/suggest/LocationUtil$LocationGetter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/search/suggest/AppMetadataRequester;->requestLocationLock(Landroid/content/Context;IZLcom/sonymobile/home/search/suggest/SuggestionRequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/search/suggest/AppMetadataRequester;

.field final synthetic val$callback:Lcom/sonymobile/home/search/suggest/SuggestionRequestCallback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$includeGenres:Z

.field final synthetic val$maxRecommendations:I


# direct methods
.method constructor <init>(Lcom/sonymobile/home/search/suggest/AppMetadataRequester;Landroid/content/Context;IZLcom/sonymobile/home/search/suggest/SuggestionRequestCallback;)V
    .locals 0

    .prologue
    .line 92
    iput-object p1, p0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$1;->this$0:Lcom/sonymobile/home/search/suggest/AppMetadataRequester;

    iput-object p2, p0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$1;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$1;->val$maxRecommendations:I

    iput-boolean p4, p0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$1;->val$includeGenres:Z

    iput-object p5, p0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$1;->val$callback:Lcom/sonymobile/home/search/suggest/SuggestionRequestCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationReceived(Landroid/location/Location;)V
    .locals 7
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v6, 0x0

    .line 95
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 96
    .local v3, "includeLocation":Z
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$1;->this$0:Lcom/sonymobile/home/search/suggest/AppMetadataRequester;

    iget-object v1, p0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$1;->val$context:Landroid/content/Context;

    iget v2, p0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$1;->val$maxRecommendations:I

    iget-boolean v4, p0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$1;->val$includeGenres:Z

    iget-object v5, p0, Lcom/sonymobile/home/search/suggest/AppMetadataRequester$1;->val$callback:Lcom/sonymobile/home/search/suggest/SuggestionRequestCallback;

    # invokes: Lcom/sonymobile/home/search/suggest/AppMetadataRequester;->run(Landroid/content/Context;IZZLcom/sonymobile/home/search/suggest/SuggestionRequestCallback;I)V
    invoke-static/range {v0 .. v6}, Lcom/sonymobile/home/search/suggest/AppMetadataRequester;->access$000(Lcom/sonymobile/home/search/suggest/AppMetadataRequester;Landroid/content/Context;IZZLcom/sonymobile/home/search/suggest/SuggestionRequestCallback;I)V

    .line 98
    return-void

    .end local v3    # "includeLocation":Z
    :cond_0
    move v3, v6

    .line 95
    goto :goto_0
.end method
