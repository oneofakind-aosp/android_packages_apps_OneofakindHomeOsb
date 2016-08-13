.class Lcom/sonymobile/home/search/suggest/LocationUtil$1;
.super Landroid/os/AsyncTask;
.source "LocationUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/search/suggest/LocationUtil;->getLocationAsync(Landroid/content/Context;Lcom/sonymobile/home/search/suggest/LocationUtil$LocationGetter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/location/Location;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/search/suggest/LocationUtil;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$locationGetter:Lcom/sonymobile/home/search/suggest/LocationUtil$LocationGetter;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/search/suggest/LocationUtil;Landroid/content/Context;Lcom/sonymobile/home/search/suggest/LocationUtil$LocationGetter;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/sonymobile/home/search/suggest/LocationUtil$1;->this$0:Lcom/sonymobile/home/search/suggest/LocationUtil;

    iput-object p2, p0, Lcom/sonymobile/home/search/suggest/LocationUtil$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/sonymobile/home/search/suggest/LocationUtil$1;->val$locationGetter:Lcom/sonymobile/home/search/suggest/LocationUtil$LocationGetter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/location/Location;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/LocationUtil$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/home/search/suggest/LocationUtil;->getLocationSync(Landroid/content/Context;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 107
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/search/suggest/LocationUtil$1;->doInBackground([Ljava/lang/Void;)Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/location/Location;)V
    .locals 3
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/LocationUtil$1;->val$locationGetter:Lcom/sonymobile/home/search/suggest/LocationUtil$LocationGetter;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 116
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/LocationUtil$1;->val$locationGetter:Lcom/sonymobile/home/search/suggest/LocationUtil$LocationGetter;

    invoke-interface {v0, p1}, Lcom/sonymobile/home/search/suggest/LocationUtil$LocationGetter;->onLocationReceived(Landroid/location/Location;)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/LocationUtil$1;->val$locationGetter:Lcom/sonymobile/home/search/suggest/LocationUtil$LocationGetter;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/LocationUtil$1;->this$0:Lcom/sonymobile/home/search/suggest/LocationUtil;

    iget-object v1, p0, Lcom/sonymobile/home/search/suggest/LocationUtil$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/sonymobile/home/search/suggest/LocationUtil$1;->val$locationGetter:Lcom/sonymobile/home/search/suggest/LocationUtil$LocationGetter;

    # invokes: Lcom/sonymobile/home/search/suggest/LocationUtil;->registerForLocationUpdates(Landroid/content/Context;Lcom/sonymobile/home/search/suggest/LocationUtil$LocationGetter;)V
    invoke-static {v0, v1, v2}, Lcom/sonymobile/home/search/suggest/LocationUtil;->access$000(Lcom/sonymobile/home/search/suggest/LocationUtil;Landroid/content/Context;Lcom/sonymobile/home/search/suggest/LocationUtil$LocationGetter;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 107
    check-cast p1, Landroid/location/Location;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonymobile/home/search/suggest/LocationUtil$1;->onPostExecute(Landroid/location/Location;)V

    return-void
.end method
