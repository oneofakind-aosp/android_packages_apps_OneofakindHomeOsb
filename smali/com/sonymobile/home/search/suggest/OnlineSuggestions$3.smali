.class Lcom/sonymobile/home/search/suggest/OnlineSuggestions$3;
.super Ljava/lang/Object;
.source "OnlineSuggestions.java"

# interfaces
.implements Lcom/sonymobile/home/search/suggest/OnlineSuggestions$PermissionRequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->prepareServerRequest(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/home/search/suggest/OnlineSuggestions;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/sonymobile/home/search/suggest/OnlineSuggestions;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions$3;->this$0:Lcom/sonymobile/home/search/suggest/OnlineSuggestions;

    iput-object p2, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestComplete(Z)V
    .locals 3
    .param p1, "success"    # Z

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions$3;->this$0:Lcom/sonymobile/home/search/suggest/OnlineSuggestions;

    iget-object v1, p0, Lcom/sonymobile/home/search/suggest/OnlineSuggestions$3;->val$context:Landroid/content/Context;

    const/4 v2, 0x1

    # invokes: Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->performServerRequest(Landroid/content/Context;ZZ)V
    invoke-static {v0, v1, p1, v2}, Lcom/sonymobile/home/search/suggest/OnlineSuggestions;->access$900(Lcom/sonymobile/home/search/suggest/OnlineSuggestions;Landroid/content/Context;ZZ)V

    .line 244
    return-void
.end method
